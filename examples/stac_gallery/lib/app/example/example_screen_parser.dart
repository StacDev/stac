import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stac/stac.dart';
import 'package:stac_gallery/app/example/example_screen.dart';
import 'package:stac_gallery/app_theme/app_theme_cubit.dart';

class ExampleScreenParser extends StacParser<ExampleScreen> {
  const ExampleScreenParser();

  @override
  ExampleScreen getModel(Map<String, dynamic> json) =>
      ExampleScreen.fromJson(json);

  @override
  String get type => 'exampleScreen';

  @override
  Widget parse(BuildContext context, ExampleScreen model) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back,
                  color: Theme.of(context).colorScheme.onSurface),
            ),
            actions: [
              Row(
                children: [
                  Text(
                    'Dark Mode',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  Switch(
                    value: state.themeMode == ThemeMode.dark,
                    activeColor: Theme.of(context).colorScheme.primary,
                    activeTrackColor: Theme.of(context).colorScheme.onSurface,
                    inactiveTrackColor:
                        Theme.of(context).colorScheme.primary.withAlpha(80),
                    inactiveThumbColor: Theme.of(context).colorScheme.primary,
                    onChanged: (bool enable) {
                      context.read<AppThemeCubit>().enableDarkMode(enable);
                    },
                  ),
                ],
              )
            ],
          ),
          body: Container(
            margin: const EdgeInsets.fromLTRB(24, 16, 24, 24),
            clipBehavior: Clip.hardEdge,
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withAlpha(128),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Stac.fromAssets(model.assetPath) ??
                const Center(child: CircularProgressIndicator()),
          ),
        );
      },
    );
  }
}
