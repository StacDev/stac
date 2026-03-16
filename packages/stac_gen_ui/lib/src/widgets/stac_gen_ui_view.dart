import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:stac_gen_ui/src/models/stac_gen_ui_model.dart';
import 'package:stac_gen_ui/src/services/claude_api_service.dart';

/// A Flutter widget that generates and renders Stac UI from a natural
/// language prompt using the Claude API.
///
/// Used both by [StacGenUiParser] and directly in Flutter widget trees:
///
/// ```dart
/// StacGenUiView(
///   model: StacGenUiModel(
///     prompt: 'Create a login form with email and password',
///   ),
/// )
/// ```
class StacGenUiView extends StatefulWidget {
  /// Creates a [StacGenUiView] with the given model.
  const StacGenUiView({super.key, required this.model});

  /// The model containing the prompt and optional loader/error widgets.
  final StacGenUiModel model;

  @override
  State<StacGenUiView> createState() => _StacGenUiViewState();
}

class _StacGenUiViewState extends State<StacGenUiView> {
  late Future<Map<String, dynamic>> _generationFuture;

  @override
  void initState() {
    super.initState();
    _generationFuture = ClaudeApiService.generateStacJson(
      prompt: widget.model.prompt,
      systemPromptExtras: widget.model.systemPromptExtras,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: _generationFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return _buildLoaderWidget(context);
        }

        if (snapshot.hasError) {
          return _buildErrorWidget(context, snapshot.error);
        }

        if (snapshot.hasData) {
          return Stac.fromJson(snapshot.data!, context) ?? const SizedBox();
        }

        return const SizedBox();
      },
    );
  }

  Widget _buildLoaderWidget(BuildContext context) {
    final loaderJson = widget.model.loaderWidget?.toJson();
    if (loaderJson != null) {
      return Stac.fromJson(loaderJson, context) ??
          const Center(child: CircularProgressIndicator());
    }
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildErrorWidget(BuildContext context, Object? error) {
    final errorJson = widget.model.errorWidget?.toJson();
    if (errorJson != null) {
      return Stac.fromJson(errorJson, context) ??
          Center(child: Text('Generation failed: $error'));
    }
    return Center(child: Text('Generation failed: $error'));
  }
}
