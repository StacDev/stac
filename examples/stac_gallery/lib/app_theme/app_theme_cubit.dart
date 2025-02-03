import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stac/stac.dart';

part 'app_theme_state.dart';

class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit() : super(const AppThemeState());

  Future<void> loadThemes() async {
    await _loadThemes();
  }

  void enableDarkMode(bool enable) {
    emit(state.copyWith(themeMode: enable ? ThemeMode.dark : ThemeMode.light));
  }

  Future<void> _loadThemes() async {
    final String lightThemeData =
        await rootBundle.loadString('assets/json/example_light_theme.json');
    final Map<String, dynamic> lightThemeJsonData = jsonDecode(lightThemeData);
    final lightTheme = StacTheme.fromJson(lightThemeJsonData);

    final String darkThemeData =
        await rootBundle.loadString('assets/json/example_dark_theme.json');
    final Map<String, dynamic> darkThemeJsonData = jsonDecode(darkThemeData);
    final darkTheme = StacTheme.fromJson(darkThemeJsonData);

    emit(
      state.copyWith(
        lightTheme: lightTheme,
        darkTheme: darkTheme,
      ),
    );
  }
}
