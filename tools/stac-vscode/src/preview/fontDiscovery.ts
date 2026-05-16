
import * as fs from 'fs';
import * as path from 'path';
import * as yaml from 'js-yaml';

export interface FontDefinition {
    family: string;
    fonts: { asset: string }[];
}

interface Pubspec {
    flutter?: {
        fonts?: {
            family: string;
            fonts: { asset: string }[];
        }[];
    };
}

export async function findFontsInPubspec(projectRoot: string): Promise<FontDefinition[]> {
    const pubspecPath = path.join(projectRoot, 'pubspec.yaml');
    if (!fs.existsSync(pubspecPath)) {
        return [];
    }

    try {
        const content = fs.readFileSync(pubspecPath, 'utf8');
        const pubspec = yaml.load(content) as Pubspec;
        const fonts = pubspec.flutter?.fonts;

        if (!Array.isArray(fonts)) {
            return [];
        }

        // Filter and validate structure
        return fonts.filter(f =>
            typeof f.family === 'string' &&
            Array.isArray(f.fonts) &&
            f.fonts.every(asset => typeof asset.asset === 'string')
        );
    } catch (error) {
        console.error('Failed to parse pubspec.yaml for fonts:', error);
        return [];
    }
}
