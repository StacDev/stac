"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || (function () {
    var ownKeys = function(o) {
        ownKeys = Object.getOwnPropertyNames || function (o) {
            var ar = [];
            for (var k in o) if (Object.prototype.hasOwnProperty.call(o, k)) ar[ar.length] = k;
            return ar;
        };
        return ownKeys(o);
    };
    return function (mod) {
        if (mod && mod.__esModule) return mod;
        var result = {};
        if (mod != null) for (var k = ownKeys(mod), i = 0; i < k.length; i++) if (k[i] !== "default") __createBinding(result, mod, k[i]);
        __setModuleDefault(result, mod);
        return result;
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
exports.PreviewHostProcess = void 0;
const node_fs_1 = require("node:fs");
const http = __importStar(require("node:http"));
const net = __importStar(require("node:net"));
const path = __importStar(require("node:path"));
const node_child_process_1 = require("node:child_process");
class PreviewHostProcess {
    extensionPath;
    outputChannel;
    port;
    startupTimeoutMs;
    hostDir;
    process;
    startupPromise;
    hostOutputBuffer = '';
    lastExitCode;
    constructor(options) {
        this.extensionPath = options.extensionPath;
        this.outputChannel = options.outputChannel;
        this.port = options.port;
        this.startupTimeoutMs = options.startupTimeoutMs;
        this.hostDir = path.join(this.extensionPath, 'preview_host');
    }
    get hostUrl() {
        return `http://127.0.0.1:${this.port}`;
    }
    get hostPort() {
        return this.port;
    }
    async ensureStarted() {
        if (await this.isHealthy()) {
            return this.hostUrl;
        }
        if (this.startupPromise) {
            return this.startupPromise;
        }
        this.startupPromise = this.startInternal();
        try {
            return await this.startupPromise;
        }
        finally {
            this.startupPromise = undefined;
        }
    }
    async stop() {
        if (!this.process) {
            return;
        }
        const running = this.process;
        this.process = undefined;
        running.kill('SIGTERM');
    }
    async startInternal() {
        await this.ensurePreviewHostDependencies();
        const maxPortRetries = 10;
        for (let attempt = 0; attempt <= maxPortRetries; attempt += 1) {
            this.outputChannel.appendLine(`[preview] Starting Flutter preview host on port ${this.port}...`);
            this.hostOutputBuffer = '';
            this.lastExitCode = undefined;
            this.process = (0, node_child_process_1.spawn)('flutter', [
                'run',
                '-d',
                'web-server',
                '--web-port',
                String(this.port),
                '--web-hostname',
                '127.0.0.1',
                '--target',
                'lib/main.dart',
            ], {
                cwd: this.hostDir,
                env: process.env,
            });
            this.process.stdout.on('data', (chunk) => {
                const text = chunk.toString();
                this.appendHostOutput(text);
                this.outputChannel.append(text);
            });
            this.process.stderr.on('data', (chunk) => {
                const text = chunk.toString();
                this.appendHostOutput(text);
                this.outputChannel.append(text);
            });
            this.process.on('close', (code) => {
                this.lastExitCode = code ?? 0;
                this.outputChannel.appendLine(`[preview] Flutter preview host exited with code ${code ?? 0}.`);
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
            }
            catch (error) {
                const detail = `${String(error)} ${this.hostOutputBuffer}`;
                if (!isAddressInUseError(detail)) {
                    throw error;
                }
                this.outputChannel.appendLine(`[preview] Port ${this.port} is in use. Trying a new port...`);
                await this.stop();
                const nextPort = await findAvailablePort(this.port + 1, 30);
                if (nextPort === undefined) {
                    throw new Error(`Preview host port ${this.port} is busy and no free port was found.`);
                }
                this.port = nextPort;
            }
        }
        throw new Error('Preview host failed to start after multiple port retries.');
    }
    async ensurePreviewHostDependencies() {
        const packageConfigPath = path.join(this.hostDir, '.dart_tool', 'package_config.json');
        if ((0, node_fs_1.existsSync)(packageConfigPath)) {
            return;
        }
        this.outputChannel.appendLine('[preview] Running flutter pub get for preview host...');
        const result = await runCommand('flutter', ['pub', 'get'], this.hostDir, this.outputChannel);
        if (result.exitCode !== 0) {
            const excerpt = summarizeOutput(result.output);
            throw new Error([
                `flutter pub get failed for preview host (exit ${result.exitCode}).`,
                'Check Stac Preview output channel for full logs.',
                'Ensure Flutter SDK includes Dart 3.9.2+.',
                excerpt ? `Last output: ${excerpt}` : '',
            ]
                .filter((line) => line.length > 0)
                .join(' '));
        }
    }
    async isHealthy() {
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
    async waitForHostHealthy() {
        const startedAt = Date.now();
        while (Date.now() - startedAt < this.startupTimeoutMs) {
            if (await this.isHealthy()) {
                return;
            }
            if (!this.process) {
                const excerpt = summarizeOutput(this.hostOutputBuffer);
                throw new Error([
                    'Preview host exited before becoming healthy.',
                    this.lastExitCode !== undefined ? `Exit code ${this.lastExitCode}.` : '',
                    excerpt ? `Last output: ${excerpt}` : '',
                ]
                    .filter((line) => line.length > 0)
                    .join(' '));
            }
            await new Promise((resolve) => {
                setTimeout(resolve, 500);
            });
        }
        const excerpt = summarizeOutput(this.hostOutputBuffer);
        throw new Error([
            `Preview host startup timed out after ${this.startupTimeoutMs}ms.`,
            excerpt ? `Last output: ${excerpt}` : '',
        ]
            .filter((line) => line.length > 0)
            .join(' '));
    }
    appendHostOutput(text) {
        this.hostOutputBuffer += text;
        if (this.hostOutputBuffer.length > 16000) {
            this.hostOutputBuffer = this.hostOutputBuffer.slice(-16000);
        }
    }
}
exports.PreviewHostProcess = PreviewHostProcess;
function runCommand(command, args, cwd, outputChannel) {
    return new Promise((resolve, reject) => {
        let buffered = '';
        const child = (0, node_child_process_1.spawn)(command, [...args], {
            cwd,
            env: process.env,
        });
        child.stdout.on('data', (chunk) => {
            const text = chunk.toString();
            buffered += text;
            outputChannel.append(text);
        });
        child.stderr.on('data', (chunk) => {
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
function summarizeOutput(output) {
    const lines = output
        .split(/\r?\n/)
        .map((line) => line.trim())
        .filter((line) => line.length > 0);
    if (lines.length === 0) {
        return '';
    }
    return lines.slice(-4).join(' | ');
}
function isAddressInUseError(detail) {
    return detail.includes('Address already in use')
        || detail.includes('EADDRINUSE')
        || detail.includes('errno = 48');
}
async function findAvailablePort(startPort, maxChecks) {
    for (let port = startPort; port < startPort + maxChecks; port += 1) {
        const available = await canBindPort(port);
        if (available) {
            return port;
        }
    }
    return undefined;
}
function canBindPort(port) {
    return new Promise((resolve) => {
        const server = net.createServer();
        server.once('error', () => {
            resolve(false);
        });
        server.listen(port, '127.0.0.1', () => {
            server.close(() => {
                resolve(true);
            });
        });
    });
}
//# sourceMappingURL=previewHostProcess.js.map