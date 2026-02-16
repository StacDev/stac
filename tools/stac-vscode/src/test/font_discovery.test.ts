
import * as assert from 'assert';
import * as path from 'path';
import * as fs from 'fs';
import { findFontsInPubspec } from '../preview/fontDiscovery';

suite('Font Discovery Tests', () => {
    const testDir = path.join(__dirname, 'font_discovery_test');

    setup(() => {
        if (!fs.existsSync(testDir)) fs.mkdirSync(testDir);
    });

    teardown(() => {
        if (fs.existsSync(testDir)) fs.rmSync(testDir, { recursive: true, force: true });
    });

    test('findFontsInPubspec returns empty array if no pubspec', async () => {
        const fonts = await findFontsInPubspec(testDir);
        assert.deepStrictEqual(fonts, []);
    });

    test('findFontsInPubspec returns empty array if no fonts section', async () => {
        const pubspec = `
name: test_project
flutter:
  uses-material-design: true
`;
        fs.writeFileSync(path.join(testDir, 'pubspec.yaml'), pubspec);
        const fonts = await findFontsInPubspec(testDir);
        assert.deepStrictEqual(fonts, []);
    });

    test('findFontsInPubspec parses valid fonts', async () => {
        const pubspec = `
name: test_project
flutter:
  fonts:
    - family: MyFont
      fonts:
        - asset: assets/fonts/MyFont.ttf
    - family: OtherFont
      fonts:
        - asset: assets/fonts/OtherFont-Regular.ttf
        - asset: assets/fonts/OtherFont-Bold.ttf
`;
        fs.writeFileSync(path.join(testDir, 'pubspec.yaml'), pubspec);
        const fonts = await findFontsInPubspec(testDir);

        assert.strictEqual(fonts.length, 2);
        assert.strictEqual(fonts[0].family, 'MyFont');
        assert.strictEqual(fonts[0].fonts.length, 1);
        assert.strictEqual(fonts[0].fonts[0].asset, 'assets/fonts/MyFont.ttf');

        assert.strictEqual(fonts[1].family, 'OtherFont');
        assert.strictEqual(fonts[1].fonts.length, 2);
    });
});
