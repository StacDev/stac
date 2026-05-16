
import * as http from 'node:http';
import * as fs from 'node:fs';
import * as path from 'node:path';
import { findAvailablePort } from './utils';

export class AssetServer {
    private server?: http.Server;
    private _port?: number;

    constructor(private readonly logger: (message: string) => void) { }

    get port(): number | undefined {
        return this._port;
    }

    async start(workspaceRoot: string): Promise<number> {
        if (this.server) {
            return this._port!;
        }

        const port = await findAvailablePort(8000, 100);
        if (!port) {
            throw new Error('No free port found for asset server');
        }

        this._port = port;
        this.server = http.createServer((req, res) => {
            // Enable CORS
            res.setHeader('Access-Control-Allow-Origin', '*');
            res.setHeader('Access-Control-Allow-Methods', 'GET, HEAD, OPTIONS');
            res.setHeader('Access-Control-Allow-Headers', 'Content-Type');

            if (req.method === 'OPTIONS') {
                res.writeHead(204);
                res.end();
                return;
            }

            if (req.method !== 'GET' && req.method !== 'HEAD') {
                res.writeHead(405);
                res.end();
                return;
            }

            try {
                const url = new URL(req.url ?? '', `http://127.0.0.1:${port}`);

                // Construct file path and resolve it to absolute path
                const requestPath = url.pathname.replace(/^\/+/, '');
                const filePath = path.resolve(workspaceRoot, requestPath);

                // Verify the resolved path is inside workspaceRoot
                const relativePath = path.relative(workspaceRoot, filePath);
                if (relativePath.startsWith('..') || path.isAbsolute(relativePath)) {
                    res.writeHead(403);
                    res.end('Forbidden: outside workspace boundaries');
                    return;
                }

                if (!fs.existsSync(filePath)) {
                    res.writeHead(404);
                    res.end('Not found');
                    return;
                }

                const stat = fs.statSync(filePath);
                if (!stat.isFile()) {
                    res.writeHead(403);
                    res.end('Not a file');
                    return;
                }

                const ext = path.extname(filePath).toLowerCase();
                let contentType = 'application/octet-stream';
                if (ext === '.png') contentType = 'image/png';
                else if (ext === '.jpg' || ext === '.jpeg') contentType = 'image/jpeg';
                else if (ext === '.gif') contentType = 'image/gif';
                else if (ext === '.svg') contentType = 'image/svg+xml';
                else if (ext === '.json') contentType = 'application/json';
                else if (ext === '.ttf') contentType = 'font/ttf';
                else if (ext === '.otf') contentType = 'font/otf';
                else if (ext === '.woff') contentType = 'font/woff';
                else if (ext === '.woff2') contentType = 'font/woff2';

                res.setHeader('Content-Type', contentType);
                res.setHeader('Content-Length', stat.size);

                const stream = fs.createReadStream(filePath);
                stream.pipe(res);
            } catch (e) {
                this.logger(`[assetServer] Error: ${e}`);
                res.writeHead(500);
                res.end('Internal Server Error');
            }
        });

        return new Promise((resolve, reject) => {
            this.server!.listen(port, '127.0.0.1', () => {
                resolve(port);
            });
            this.server!.on('error', (err) => {
                reject(err);
            });
        });
    }

    stop() {
        if (this.server) {
            this.server.close();
            this.server = undefined;
            this._port = undefined;
        }
    }
}
