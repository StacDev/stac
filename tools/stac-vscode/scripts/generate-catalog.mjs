import fs from 'node:fs/promises';
import path from 'node:path';

const extensionRoot = path.resolve(process.cwd());
const repoRoot = path.resolve(extensionRoot, '..', '..');
const stacCoreRoot = path.join(repoRoot, 'packages', 'stac_core', 'lib');

const widgetsExportPath = path.join(stacCoreRoot, 'widgets', 'widgets.dart');
const widgetCatalogOut = path.join(extensionRoot, 'src', 'generated', 'widgetCatalog.ts');

const toTs = (value) => JSON.stringify(value, null, 2);

async function readText(filePath) {
  return fs.readFile(filePath, 'utf8');
}

async function parseWidgetCatalog() {
  const exportText = await readText(widgetsExportPath);
  const exportMatches = [...exportText.matchAll(/^export '(.+?)';$/gm)];

  const widgets = [];

  for (const match of exportMatches) {
    const exportRel = match[1];
    const slugMatch = exportRel.match(/stac_([^/]+)\.dart$/);
    if (!slugMatch) {
      continue;
    }

    const slug = slugMatch[1];
    const widgetFile = path.join(stacCoreRoot, 'widgets', exportRel);
    const widgetSource = await readText(widgetFile);

    const classMatch = widgetSource.match(/class\s+(Stac[A-Za-z0-9_]+)\s+extends\s+StacWidget/);
    if (!classMatch) {
      continue;
    }

    const className = classMatch[1];
    const ctorRegex = new RegExp(`const\\s+${className}\\s*\\(\\s*\\{([\\s\\S]*?)\\}\\s*\\);`);
    const ctorMatch = widgetSource.match(ctorRegex);
    const ctorBody = ctorMatch ? ctorMatch[1] : '';

    const supportsChild = /\bthis\.child\b/.test(ctorBody);
    const supportsChildren = /\bthis\.children\b/.test(ctorBody);

    widgets.push({
      className,
      slug,
      supportsChild,
      supportsChildren,
    });
  }

  widgets.sort((a, b) => a.className.localeCompare(b.className));
  return widgets;
}

async function writeWidgetCatalog(widgets) {
  const payload = `/* AUTO-GENERATED FILE. DO NOT EDIT. */\n\nexport interface WidgetCatalogEntry {\n  className: string;\n  slug: string;\n  supportsChild: boolean;\n  supportsChildren: boolean;\n}\n\nexport const widgetCatalog: WidgetCatalogEntry[] = ${toTs(widgets)};\n\nexport const widgetCatalogByClass = new Map(\n  widgetCatalog.map((entry) => [entry.className, entry] as const),\n);\n`;

  await fs.writeFile(widgetCatalogOut, payload);
}

async function main() {
  const widgets = await parseWidgetCatalog();
  await writeWidgetCatalog(widgets);

  // eslint-disable-next-line no-console
  console.log(`Generated ${widgets.length} widgets for wrap/snippet support.`);
}

main().catch((error) => {
  // eslint-disable-next-line no-console
  console.error(error);
  process.exitCode = 1;
});
