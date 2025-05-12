import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stac/stac.dart';
import 'package:stac_gallery/app/details/details_screen.dart';
import 'package:stac_gallery/app/example/example_screen_parser.dart';
import 'package:stac_gallery/app/home/home_screen.dart';
import 'package:stac_gallery/app_theme/app_theme_cubit.dart';
import 'package:stac_webview/stac_webview.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  await Stac.initialize(
    parsers: const [
      ExampleScreenParser(),
      StacWebViewParser(),
    ],
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppThemeCubit()..loadThemes(),
      child: BlocBuilder<AppThemeCubit, AppThemeState>(
        builder: (context, state) {
          return StacApp(
            theme: state.lightTheme,
            darkTheme: state.darkTheme,
            themeMode: state.themeMode,
            homeBuilder: (context) => HomeScreen(),
            title: 'Stac Gallery',
            routes: {
              '/homeScreen': (context) => const HomeScreen(),
              '/detailsScreen': (context) => const DetailsScreen(),
            },
          );
        },
      ),
    );
  }
}
