
import * as assert from 'assert';
import * as http from 'http';
import * as path from 'path';
import * as fs from 'fs';
import { AssetServer } from '../preview/assetServer';
import { transformJson } from '../preview/jsonTransformer';

suite('Preview Assets Tests', () => {
    let server: AssetServer;
    let itemsToDelete: string[] = [];

    setup(() => {
        server = new AssetServer((_msg) => { });
    });

    teardown(() => {
        server.stop();
        itemsToDelete.forEach(p => {
            if (fs.existsSync(p)) {
                try {
                    const stat = fs.statSync(p);
                    if (stat.isDirectory()) {
                        fs.rmSync(p, { recursive: true, force: true });
                    } else {
                        fs.unlinkSync(p);
                    }
                } catch (e) {
                    console.error(`Failed to cleanup ${p}:`, e);
                }
            }
        });
        itemsToDelete = [];
    });

    test('AssetServer serves file correctly', async () => {
        const workspaceRoot = path.join(__dirname, 'assets_test_ws');
        if (!fs.existsSync(workspaceRoot)) fs.mkdirSync(workspaceRoot);
        const testFile = path.join(workspaceRoot, 'test.png');
        fs.writeFileSync(testFile, 'fake-image-data');
        itemsToDelete.push(testFile);
        itemsToDelete.push(path.join(workspaceRoot)); // cleanup dir in teardown if empty, logic simplified here

        const port = await server.start(workspaceRoot);

        const response = await new Promise<{ statusCode: number, data: string }>((resolve, reject) => {
            http.get(`http://127.0.0.1:${port}/test.png`, (res) => {
                let data = '';
                res.on('data', chunk => data += chunk);
                res.on('end', () => resolve({ statusCode: res.statusCode ?? 0, data }));
            }).on('error', reject);
        });

        assert.strictEqual(response.statusCode, 200);
        assert.strictEqual(response.data, 'fake-image-data');

        // Cleanup handled in teardown
    });

    test('AssetServer serves font file correctly', async () => {
        const workspaceRoot = path.join(__dirname, 'assets_test_ws_fonts');
        if (fs.existsSync(workspaceRoot)) fs.rmSync(workspaceRoot, { recursive: true, force: true });
        fs.mkdirSync(workspaceRoot);

        const testFile = path.join(workspaceRoot, 'test.ttf');
        fs.writeFileSync(testFile, 'fake-font-data');
        itemsToDelete.push(workspaceRoot);

        const port = await server.start(workspaceRoot);

        const response = await new Promise<{ statusCode: number, headers: any }>((resolve, reject) => {
            http.get(`http://127.0.0.1:${port}/test.ttf`, (res) => {
                res.resume();
                resolve({ statusCode: res.statusCode ?? 0, headers: res.headers });
            }).on('error', reject);
        });

        assert.strictEqual(response.statusCode, 200);
        assert.strictEqual(response.headers['content-type'], 'font/ttf');
    });

    test('jsonTransformer rewrites asset urls', () => {
        const port = 1234;
        const input = {
            type: 'image',
            imageType: 'asset',
            src: 'assets/logo.png',
            width: 100
        };

        const output = transformJson(input, port);

        assert.strictEqual(output.imageType, 'network');
        assert.strictEqual(output.src, `http://127.0.0.1:${port}/assets/logo.png`);
        assert.strictEqual(output.width, 100);
    });

    test('jsonTransformer handles nested structures', () => {
        const port = 1234;
        const input = {
            type: 'column',
            children: [
                {
                    type: 'image',
                    imageType: 'asset',
                    src: 'assets/1.png'
                },
                {
                    type: 'row',
                    children: [
                        {
                            type: 'image',
                            imageType: 'network',
                            src: 'http://example.com/2.png'
                        }
                    ]
                }
            ]
        };

        const output = transformJson(input, port);

        assert.strictEqual(output.children[0].imageType, 'network');
        assert.strictEqual(output.children[0].src, `http://127.0.0.1:${port}/assets/1.png`);

        // Should not touch network images
        assert.strictEqual(output.children[1].children[0].imageType, 'network');
        assert.strictEqual(output.children[1].children[0].src, 'http://example.com/2.png');
    });
});
