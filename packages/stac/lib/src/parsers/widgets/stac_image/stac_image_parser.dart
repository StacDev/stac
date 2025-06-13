// This file handles conditional imports based on platform
// It exports the appropriate implementation of StacImageParser

export 'stac_image_parser_stub.dart'
    if (dart.library.io) 'stac_image_parser_io.dart'
    if (dart.library.html) 'stac_image_parser_web.dart'
    if (dart.library.wasm) 'stac_image_parser_web.dart';
