import * as net from 'node:net';

export async function findAvailablePort(startPort: number, maxChecks: number): Promise<number | undefined> {
    for (let port = startPort; port < startPort + maxChecks; port += 1) {
        const available = await canBindPort(port);
        if (available) {
            return port;
        }
    }

    return undefined;
}

export function canBindPort(port: number): Promise<boolean> {
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
