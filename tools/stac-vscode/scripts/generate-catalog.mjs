import fs from 'node:fs/promises';
import path from 'node:path';

const extensionRoot = path.resolve(process.cwd());
const repoRoot = path.resolve(extensionRoot, '..', '..');
const stacCoreRoot = path.join(repoRoot, 'packages', 'stac_core', 'lib');

const widgetsExportPath = path.join(stacCoreRoot, 'widgets', 'widgets.dart');
const actionsRoot = path.join(stacCoreRoot, 'actions');
const actionTypePath = path.join(
  stacCoreRoot,
  'foundation',
  'specifications',
  'action_type.dart',
);
const themeExportPath = path.join(stacCoreRoot, 'foundation', 'theme', 'theme.dart');

const widgetCatalogOut = path.join(extensionRoot, 'src', 'generated', 'widgetCatalog.ts');
const snippetCatalogOut = path.join(extensionRoot, 'src', 'generated', 'snippetCatalog.ts');

const toPascalFromSnake = (value) =>
  value
    .split('_')
    .filter(Boolean)
    .map((part) => part.charAt(0).toUpperCase() + part.slice(1))
    .join('');

const toSnakeFromCamel = (value) =>
  value
    .replace(/([a-z0-9])([A-Z])/g, '$1_$2')
    .replace(/([A-Z])([A-Z][a-z])/g, '$1_$2')
    .toLowerCase();

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
      trigger: `stac.widget.${slug}`,
      supportsChild,
      supportsChildren,
    });
  }

  widgets.sort((a, b) => a.className.localeCompare(b.className));
  return widgets;
}

async function parseActionTypes() {
  const text = await readText(actionTypePath);
  const enumBlock = text.match(/enum\s+ActionType\s*\{([\s\S]*?)\}/);
  if (!enumBlock) {
    return [];
  }

  return enumBlock[1]
    .split('\n')
    .map((line) => line.trim())
    .map((line) => line.match(/^([a-zA-Z0-9_]+),$/)?.[1])
    .filter(Boolean);
}

async function walkDartFiles(dir) {
  const entries = await fs.readdir(dir, { withFileTypes: true });
  const files = [];

  for (const entry of entries) {
    const fullPath = path.join(dir, entry.name);
    if (entry.isDirectory()) {
      files.push(...(await walkDartFiles(fullPath)));
      continue;
    }

    if (entry.isFile() && entry.name.endsWith('.dart') && !entry.name.endsWith('.g.dart')) {
      files.push(fullPath);
    }
  }

  return files;
}

async function parseActionClassByType() {
  const files = await walkDartFiles(actionsRoot);
  files.sort();

  const byType = new Map();

  for (const file of files) {
    const text = await readText(file);
    const regex =
      /class\s+(Stac[A-Za-z0-9_]+)\s+extends\s+StacAction[\s\S]*?String\s+get\s+actionType\s*=>\s*ActionType\.([A-Za-z0-9_]+)\.name;/g;

    for (const match of text.matchAll(regex)) {
      const className = match[1];
      const actionType = match[2];
      if (!byType.has(actionType)) {
        byType.set(actionType, className);
      }
    }
  }

  return byType;
}

async function parseThemeClasses() {
  const exportText = await readText(themeExportPath);
  const exportMatches = [...exportText.matchAll(/^export '(.+?)';$/gm)];
  const themes = [];

  for (const match of exportMatches) {
    const rel = match[1];
    const slugMatch = rel.match(/stac_([^/]+)\.dart$/);
    if (!slugMatch) {
      continue;
    }

    const slug = slugMatch[1];
    const filePath = path.join(stacCoreRoot, 'foundation', 'theme', rel);
    const fileText = await readText(filePath);
    const classMatch = fileText.match(/class\s+(Stac[A-Za-z0-9_]+)\b/);

    themes.push({
      className: classMatch?.[1] ?? `Stac${toPascalFromSnake(slug)}`,
      slug,
      trigger: `stac.theme.${slug}`,
    });
  }

  themes.sort((a, b) => a.className.localeCompare(b.className));
  return themes;
}

function buildActionSnippetBody(actionType, className) {
  switch (actionType) {
    case 'navigate':
      return [
        "const StacNavigateAction(",
        "  routeName: '\$1',",
        ')',
      ];
    case 'none':
      return [
        "const StacAction(",
        "  jsonData: {'actionType': 'none'},",
        ')',
      ];
    case 'networkRequest':
      return [
        "const StacNetworkRequest(",
        "  url: '\$1',",
        ')',
      ];
    case 'showModalBottomSheet':
      return [
        'const StacModalBottomSheetAction(',
        '  widget: StacContainer(),',
        ')',
      ];
    case 'showDialog':
      return [
        'const StacDialogAction(',
        '  widget: StacContainer().toJson(),',
        ')',
      ];
    case 'getFormValue':
      return [
        'const StacGetFormValue(',
        "  id: '\$1',",
        ')',
      ];
    case 'validateForm':
      return [
        'const StacFormValidate(',
        "  isValid: StacAction(jsonData: {'actionType': 'none'}),",
        ')',
      ];
    case 'showSnackBar':
      return [
        'const StacSnackBar(',
        "  content: StacText(data: '\$1').toJson(),",
        ')',
      ];
    case 'setValue':
      return [
        'const StacSetValueAction(',
        '  values: [',
        "    {'key': '\$1', 'value': '\$2'},",
        '  ],',
        ')',
      ];
    case 'multiAction':
      return [
        'const StacMultiAction(',
        '  actions: [',
        "    StacAction(jsonData: {'actionType': 'none'}),",
        '  ],',
        ')',
      ];
    case 'delay':
      return [
        'const StacDelayAction(',
        '  milliseconds: ${1:300},',
        ')',
      ];
    default:
      return [`${className}(`, '  $0', ')'];
  }
}

function buildWidgetSnippetBody(widget) {
  if (widget.supportsChild) {
    return [`${widget.className}(`, '  child: $0,', ')'];
  }

  if (widget.supportsChildren) {
    return [
      `${widget.className}(`,
      '  children: [',
      '    $0,',
      '  ],',
      ')',
    ];
  }

  return [`${widget.className}(`, '  $0', ')'];
}

async function writeWidgetCatalog(widgets) {
  const payload = `/* AUTO-GENERATED FILE. DO NOT EDIT. */\n\nexport interface WidgetCatalogEntry {\n  className: string;\n  slug: string;\n  trigger: string;\n  supportsChild: boolean;\n  supportsChildren: boolean;\n}\n\nexport const widgetCatalog: WidgetCatalogEntry[] = ${toTs(widgets)};\n\nexport const widgetCatalogByClass = new Map(\n  widgetCatalog.map((entry) => [entry.className, entry] as const),\n);\n`;

  await fs.writeFile(widgetCatalogOut, payload);
}

async function writeSnippetCatalog({ widgets, actions, themes }) {
  const snippets = [];

  for (const widget of widgets) {
    snippets.push({
      kind: 'widget',
      label: widget.className,
      prefix: widget.trigger,
      description: `Stac widget: ${widget.className}`,
      body: buildWidgetSnippetBody(widget),
    });
  }

  for (const action of actions) {
    snippets.push({
      kind: 'action',
      label: action.className,
      prefix: `stac.action.${toSnakeFromCamel(action.actionType)}`,
      description: `Stac action: ${action.actionType}`,
      body: buildActionSnippetBody(action.actionType, action.className),
    });
  }

  snippets.push({
    kind: 'screen',
    label: 'StacScreen',
    prefix: 'stac.screen',
    description: 'Stac screen template',
    body: [
      "@StacScreen(screenName: '\$1')",
      'StacWidget $2() {',
      '  return StacScaffold(',
      '    body: StacCenter(',
      "      child: StacText(data: '\$0'),",
      '    ),',
      '  );',
      '}',
    ],
  });

  snippets.push({
    kind: 'theme',
    label: 'StacThemeRef',
    prefix: 'stac.theme',
    description: 'Stac theme template',
    body: [
      "@StacThemeRef(name: '\$1')",
      'StacTheme get $2 => StacTheme(',
      '  brightness: StacBrightness.light,',
      '  colorScheme: StacColorScheme(',
      '    brightness: StacBrightness.light,',
      "    primary: '\$0',",
      "    onPrimary: '#FFFFFF',",
      "    surface: '#FFFFFF',",
      "    onSurface: '#000000',",
      '  ),',
      ');',
    ],
  });

  for (const theme of themes) {
    snippets.push({
      kind: 'theme',
      label: theme.className,
      prefix: theme.trigger,
      description: `Stac theme model: ${theme.className}`,
      body: [`${theme.className}(`, '  $0', ')'],
    });
  }

  snippets.sort((a, b) => a.prefix.localeCompare(b.prefix));

  const payload = `/* AUTO-GENERATED FILE. DO NOT EDIT. */\n\nexport type SnippetKind = 'widget' | 'action' | 'screen' | 'theme';\n\nexport interface SnippetCatalogEntry {\n  kind: SnippetKind;\n  label: string;\n  prefix: string;\n  description: string;\n  body: string[];\n}\n\nexport const snippetCatalog: SnippetCatalogEntry[] = ${toTs(snippets)};\n`;

  await fs.writeFile(snippetCatalogOut, payload);
}

async function main() {
  const widgets = await parseWidgetCatalog();
  const actionTypes = await parseActionTypes();
  const actionTypeToClass = await parseActionClassByType();
  const themes = await parseThemeClasses();

  const actions = actionTypes.map((actionType) => {
    if (actionType === 'none') {
      return { actionType, className: 'StacAction' };
    }

    return {
      actionType,
      className: actionTypeToClass.get(actionType) ?? `Stac${toPascalFromSnake(toSnakeFromCamel(actionType))}`,
    };
  });

  await writeWidgetCatalog(widgets);
  await writeSnippetCatalog({ widgets, actions, themes });

  // eslint-disable-next-line no-console
  console.log(
    `Generated ${widgets.length} widgets, ${actions.length} actions and ${themes.length} theme snippets.`,
  );
}

main().catch((error) => {
  // eslint-disable-next-line no-console
  console.error(error);
  process.exitCode = 1;
});
