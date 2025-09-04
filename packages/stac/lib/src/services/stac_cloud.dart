import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:stac/src/framework/stac_service.dart';

class StacCloud {
  const StacCloud._();

  static final Dio _dio = Dio();

  static const String _fetchUrl = 'http://api.stac.dev/screens';

  static Future<Response?> fetchScreen({
    required BuildContext context,
    required String routeName,
  }) {
    final options = StacService.options;
    if (options == null) {
      throw Exception('StacOptions is not set');
    }

    return _dio.get(
      _fetchUrl,
      queryParameters: <String, dynamic>{
        'projectId': options.projectId,
        'screenName': routeName,
      },
    );
  }
}
