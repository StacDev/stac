import { existsSync } from 'node:fs';
import * as http from 'node:http';
import * as net from 'node:net';
import * as path from 'node:path';
import { spawn, type ChildProcessWithoutNullStreams } from 'node:child_process';
import * as vscode from 'vscode';
import { canBindPort, findAvailablePort } from './utils';

export interface PreviewHostProcessOptions {
  extensionPath: string;
  outputChannel: vscode.OutputChannel;
  port: number;
  startupTimeoutMs: number;
}

export class PreviewHostProcess {
  private readonly extensionPath: string;

  private readonly outputChannel: vscode.OutputChannel;

  private port: number;

  private readonly startupTimeoutMs: number;

  private readonly hostDir: string;

  private process?: ChildProcessWithoutNullStreams;

  private startupPromise?: Promise<string>;

  private hostOutputBuffer = '';

  private lastExitCode?: number;

  constructor(options: PreviewHostProcessOptions) {
    this.extensionPath = options.extensionPath;
    this.outputChannel = options.outputChannel;
    this.port = options.port;
    this.startupTimeoutMs = options.startupTimeoutMs;
    this.hostDir = path.join(this.extensionPath, 'preview_host');
  }

  get hostUrl(): string {
    return `http://127.0.0.1:${this.port}`;
  }

  get hostPort(): number {
    return this.port;
  }

  async ensureStarted(): Promise<string> {
    if (await this.isHealthy()) {
      return this.hostUrl;
    }

    if (this.startupPromise) {
      return this.startupPromise;
    }

    this.startupPromise = this.startInternal();
    try {
      return await this.startupPromise;
    } finally {
      this.startupPromise = undefined;
    }
  }

  async stop(): Promise<void> {
    if (!this.process) {
      return;
    }

    const running = this.process;
    this.process = undefined;
    running.kill('SIGTERM');

    // Wait for the process to exit so the port is actually released
    await new Promise<void>((resolve) => {
      const timeout = setTimeout(() => {
        running.kill('SIGKILL');
        resolve();
      }, 5000);

      running.on('close', () => {
        clearTimeout(timeout);
        resolve();
      });
    });
  }

  private async startInternal(): Promise<string> {
    await this.ensurePreviewHostDependencies();
    const maxPortRetries = 10;

    // Pre-check: if the initial port is busy, find a free one BEFORE spawning
    // flutter (avoids the slow fail-then-retry cycle)
    if (!(await canBindPort(this.port))) {
      this.outputChannel.appendLine(
        `[preview] Port ${this.port} is already in use, finding a free port...`,
      );
      const freePort = await findAvailablePort(this.port + 1, 30);
      if (freePort !== undefined) {
        this.port = freePort;
      } else {
        this.outputChannel.appendLine(`[preview] No free port found after port ${this.port}. Aborting startup.`);
        throw new Error(`Preview host port ${this.port} is busy and no free port was found.`);
      }
    }

    for (let attempt = 0; attempt <= maxPortRetries; attempt += 1) {
      this.outputChannel.appendLine(
        `[preview] Starting Flutter preview host on port ${this.port}...`,
      );
      this.hostOutputBuffer = '';
      this.lastExitCode = undefined;
      const command = 'flutter';
      this.process = spawn(
        command,
        [
          'run',
          '-d',
          'web-server',
          '--web-port',
          String(this.port),
          '--web-hostname',
          '127.0.0.1',
          '--target',
          'lib/main.dart',
        ],
        {
          cwd: this.hostDir,
          env: process.env,
          shell: process.platform === 'win32',
        },
      );

      this.process.stdout.on('data', (chunk: Buffer | string) => {
        const text = chunk.toString();
        this.appendHostOutput(text);
        this.outputChannel.append(text);
      });

      this.process.stderr.on('data', (chunk: Buffer | string) => {
        const text = chunk.toString();
        this.appendHostOutput(text);
        this.outputChannel.append(text);
      });

      this.process.on('close', (code) => {
        this.lastExitCode = code ?? 0;
        this.outputChannel.appendLine(
          `[preview] Flutter preview host exited with code ${code ?? 0}.`,
        );
        this.process = undefined;
      });

      this.process.on('error', (error) => {
        this.outputChannel.appendLine(`[preview] Flutter preview host error: ${String(error)}`);
        this.process = undefined;
      });

      try {
        await this.waitForHostHealthy();
        this.outputChannel.appendLine('[preview] Flutter preview host is ready.');
        return this.hostUrl;
      } catch (error) {
        const detail = `${String(error)} ${this.hostOutputBuffer}`;
        if (!isAddressInUseError(detail)) {
          throw error;
        }

        this.outputChannel.appendLine(
          `[preview] Port ${this.port} is in use. Trying a new port...`,
        );
        await this.stop();
        const nextPort = await findAvailablePort(this.port + 1, 30);
        if (nextPort === undefined) {
          throw new Error(
            `Preview host port ${this.port} is busy and no free port was found.`,
          );
        }
        this.port = nextPort;
      }
    }

    throw new Error('Preview host failed to start after multiple port retries.');
  }

  private async ensurePreviewHostDependencies(): Promise<void> {
    const packageConfigPath = path.join(
      this.hostDir,
      '.dart_tool',
      'package_config.json',
    );
    if (existsSync(packageConfigPath)) {
      return;
    }

    this.outputChannel.appendLine('[preview] Running flutter pub get for preview host...');
    const result = await runCommand(
      'flutter',
      ['pub', 'get'],
      this.hostDir,
      this.outputChannel,
    );

    if (result.exitCode !== 0) {
      const excerpt = summarizeOutput(result.output);
      throw new Error(
        [
          `flutter pub get failed for preview host (exit ${result.exitCode}).`,
          'Check Stac Preview output channel for full logs.',
          'Ensure Flutter SDK includes Dart 3.9.2+.',
          excerpt ? `Last output: ${excerpt}` : '',
        ]
          .filter((line) => line.length > 0)
          .join(' '),
      );
    }
  }

  private async isHealthy(): Promise<boolean> {
    const target = `${this.hostUrl}/`;
    return new Promise((resolve) => {
      const request = http.get(target, (response) => {
        response.resume();
        resolve((response.statusCode ?? 500) < 500);
      });

      request.on('error', () => resolve(false));
      request.setTimeout(1200, () => {
        request.destroy();
        resolve(false);
      });
    });
  }

  private async waitForHostHealthy(): Promise<void> {
    const startedAt = Date.now();
    // The HTTP health check alone is insufficient: Flutter's web-server starts
    // responding before Dart-to-JS compilation finishes, so the iframe would
    // load an incomplete page.  Wait for Flutter's stdout to confirm the app is
    // actually being served before declaring the host ready.
    const servingPattern = 'is being served at';
    let stdoutPatternSeen = false;

    while (Date.now() - startedAt < this.startupTimeoutMs) {
      if (!this.process) {
        const excerpt = summarizeOutput(this.hostOutputBuffer);
        throw new Error(
          [
            'Preview host exited before becoming healthy.',
            this.lastExitCode !== undefined ? `Exit code ${this.lastExitCode}.` : '',
            excerpt ? `Last output: ${excerpt}` : '',
          ]
            .filter((line) => line.length > 0)
            .join(' '),
        );
      }

      if (!stdoutPatternSeen) {
        stdoutPatternSeen = this.hostOutputBuffer.includes(servingPattern);
      }

      if (stdoutPatternSeen && await this.isHealthy()) {
        return;
      }

      await new Promise<void>((resolve) => {
        setTimeout(resolve, 500);
      });
    }

    const excerpt = summarizeOutput(this.hostOutputBuffer);
    throw new Error(
      [
        `Preview host startup timed out after ${this.startupTimeoutMs}ms.`,
        excerpt ? `Last output: ${excerpt}` : '',
      ]
        .filter((line) => line.length > 0)
        .join(' '),
    );
  }

  private appendHostOutput(text: string) {
    this.hostOutputBuffer += text;
    if (this.hostOutputBuffer.length > 16000) {
      this.hostOutputBuffer = this.hostOutputBuffer.slice(-16000);
    }
  }
}

interface CommandResult {
  exitCode: number;
  output: string;
}

function runCommand(
  command: string,
  args: readonly string[],
  cwd: string,
  outputChannel: vscode.OutputChannel,
): Promise<CommandResult> {
  return new Promise((resolve, reject) => {
    let buffered = '';

    const child = spawn(command, [...args], {
      cwd,
      env: process.env,
      shell: process.platform === 'win32',
    });

    child.stdout.on('data', (chunk: Buffer | string) => {
      const text = chunk.toString();
      buffered += text;
      outputChannel.append(text);
    });

    child.stderr.on('data', (chunk: Buffer | string) => {
      const text = chunk.toString();
      buffered += text;
      outputChannel.append(text);
    });

    child.on('error', (error) => reject(error));
    child.on('close', (code) => {
      resolve({
        exitCode: code ?? 1,
        output: buffered,
      });
    });
  });
}

function summarizeOutput(output: string): string {
  const lines = output
    .split(/\r?\n/)
    .map((line) => line.trim())
    .filter((line) => line.length > 0);
  if (lines.length === 0) {
    return '';
  }

  return lines.slice(-4).join(' | ');
}

function isAddressInUseError(detail: string): boolean {
  return detail.includes('Address already in use')
    || detail.includes('EADDRINUSE')
    || detail.includes('errno = 48');
}


