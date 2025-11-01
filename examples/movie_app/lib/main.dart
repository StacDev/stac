import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/default_stac_options.dart';
import 'package:movie_app/themes/app_theme.dart';
import 'package:movie_app/widgets/movie_carousel/movie_carousel_parser.dart';
import 'package:stac/stac.dart';

final token =
    "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5YzNjN2I1OGQ5NjU5NzUwMmNjODAxNWRkZjNjNTY1MyIsIm5iZiI6MTc0NDY1NDUzNi4zMjgsInN1YiI6IjY3ZmQ1MGM4N2MyOWFlNWJjM2Q5NjEzNiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.oZWfMnM-eiPjHvlvjLbrZeQXCfm2lvgGiNx8xDovzW8";

void main() async {
  final dio = Dio();
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers['Authorization'] = 'Bearer $token';
        return handler.next(options);
      },
    ),
  );

  await Stac.initialize(
    options: defaultStacOptions,
    dio: dio,
    parsers: [MovieCarouselParser()],
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StacApp(
      title: 'Flutter Demo',
      theme: darkTheme,
      homeBuilder: (_) {
        return Stac(routeName: 'onboarding_screen');
      },
    );
  }
}
