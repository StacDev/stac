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
  const StacGenUiView({
    super.key,
    required this.model,
    this.onStacJsonReceived,
    this.onError,
  });

  /// The model containing the prompt and optional loader/error widgets.
  final StacGenUiModel model;

  /// Called when the LLM returns a Stac JSON map, before it is rendered.
  final void Function(Map<String, dynamic> json)? onStacJsonReceived;

  /// Called when generation fails, parsing/rendering throws, or
  /// [Stac.fromJson] returns null (unsupported type / parse error).
  final void Function(Object error, StackTrace stackTrace)? onError;

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
          final err = snapshot.error!;
          final stack = snapshot.stackTrace ?? StackTrace.current;
          widget.onError?.call(err, stack);
          return _buildErrorWidget(context, snapshot.error);
        }

        if (snapshot.hasData) {
          final json = snapshot.data!;
          widget.onStacJsonReceived?.call(json);
          try {
            final built = Stac.fromJson(json, context);
            if (built == null) {
              final message =
                  'Stac.fromJson returned null (unsupported widget type or parse failure). '
                  'JSON type: ${json['type']}';
              final error = StateError(message);
              final stack = StackTrace.current;
              widget.onError?.call(error, stack);
            }
            return built ?? const SizedBox();
          } catch (e, stack) {
            widget.onError?.call(e, stack);
            return _buildErrorWidget(context, e);
          }
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
