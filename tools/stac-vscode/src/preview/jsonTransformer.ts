
export function transformJson(json: any, assetServerPort: number): any {
    if (json === null || typeof json !== 'object') {
        return json;
    }

    if (Array.isArray(json)) {
        return json.map((item) => transformJson(item, assetServerPort));
    }

    // Check for StacImage with asset type
    // We assume the structure matches the StacImage definition in the catalog/schema.
    // Typically: { "type": "image", "imageType": "asset", "src": "assets/foo.png", ... }
    const result: any = {};
    for (const key in json) {
        if (Object.prototype.hasOwnProperty.call(json, key)) {
            result[key] = transformJson(json[key], assetServerPort);
        }
    }

    if (
        json.type === 'image' &&
        json.imageType === 'asset' &&
        typeof json.src === 'string'
    ) {
        // Transform to network image pointing to local asset server
        result.imageType = 'network';
        // Ensure src doesn't start with leading slash for clean joining, or handle it.
        // The asset server expects path from workspace root.
        // If src is "assets/icon.png", url is "http://127.0.0.1:PORT/assets/icon.png"
        result.src = `http://127.0.0.1:${assetServerPort}/${json.src.replace(/^\//, '')}`;
    }

    return result;
}
