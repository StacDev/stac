import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stac/src/parsers/core/stac_action_parser.dart';
import 'package:stac/src/parsers/foundation/decoration/stac_input_decoration_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_drag_start_behavior_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_mouse_cursor_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_scroll_physics_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_align_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_capitalization_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_direction_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_input_action_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_input_type_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac/src/state/stac_input_binding.dart';

class StacTextFieldParser extends StacParser<StacTextField> {
  const StacTextFieldParser({this.controller, this.focusNode});

  final TextEditingController? controller;
  final FocusNode? focusNode;

  @override
  StacTextField getModel(Map<String, dynamic> json) =>
      StacTextField.fromJson(json);

  @override
  String get type => WidgetType.textField.name;

  @override
  Widget parse(BuildContext context, StacTextField model) {
    return _TextFieldWidget(
      model: model,
      controller: controller,
      focusNode: focusNode,
    );
  }
}

/// Keeps the text controller in [State] so the typed text survives rebuilds.
class _TextFieldWidget extends StatefulWidget {
  const _TextFieldWidget({
    required this.model,
    this.controller,
    this.focusNode,
  });

  final StacTextField model;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  @override
  State<_TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<_TextFieldWidget>
    with StacBoundInput<_TextFieldWidget, String> {
  TextEditingController? _ownedController;

  @override
  String? get bindPath => widget.model.bind;

  @override
  String? get initialValue => widget.model.initialValue;

  @override
  String? convertBound(Object? value) => stacStringify(value);

  bool _built = false;

  @override
  void showBound(String? value) {
    final text = value ?? '';
    void apply() {
      if (!mounted || text == _controller.text) return;
      _controller.value = TextEditingValue(
        text: text,
        selection: TextSelection.collapsed(offset: text.length),
      );
    }

    // Once built, the field listens to the controller and may rebuild its
    // form, which is not allowed while the tree is building.
    if (_built &&
        SchedulerBinding.instance.schedulerPhase ==
            SchedulerPhase.persistentCallbacks) {
      SchedulerBinding.instance.addPostFrameCallback((_) => apply());
    } else {
      apply();
    }
  }

  TextEditingController get _controller =>
      widget.controller ?? _ownedController!;

  @override
  void initState() {
    super.initState();
    final initialValue = widget.model.initialValue ?? '';
    if (widget.controller == null) {
      _ownedController = TextEditingController(text: initialValue);
    } else if (initialValue.isNotEmpty) {
      widget.controller!.text = initialValue;
    }
  }

  @override
  void didUpdateWidget(covariant _TextFieldWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller == oldWidget.controller) return;
    if (widget.controller == null) {
      _ownedController = TextEditingController(
        text: oldWidget.controller?.text ?? widget.model.initialValue ?? '',
      );
    } else {
      _ownedController?.dispose();
      _ownedController = null;
    }
  }

  @override
  void dispose() {
    _ownedController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _built = true;
    final model = widget.model;
    return TextField(
      controller: _controller,
      focusNode: widget.focusNode,
      keyboardType: model.keyboardType?.parse,
      textInputAction: model.textInputAction?.parse,
      textCapitalization:
          model.textCapitalization?.parse ?? TextCapitalization.none,
      textAlign: model.textAlign?.parse ?? TextAlign.start,
      textDirection: model.textDirection?.parse,
      readOnly: model.readOnly ?? false,
      showCursor: model.showCursor,
      autofocus: model.autofocus ?? false,
      obscuringCharacter: model.obscuringCharacter ?? '•',
      maxLines: model.maxLines,
      minLines: model.minLines,
      maxLength: model.maxLength,
      obscureText: model.obscureText ?? false,
      enableSuggestions: model.enableSuggestions ?? true,
      enabled: model.enabled,
      expands: model.expands ?? false,
      cursorWidth: model.cursorWidth ?? 2.0,
      cursorHeight: model.cursorHeight,
      cursorColor: model.cursorColor?.toColor(context),
      style: model.style?.parse(context),
      decoration: model.decoration?.parse(context),
      scrollPadding: model.scrollPadding?.parse ?? const EdgeInsets.all(20.0),
      enableInteractiveSelection: model.enableInteractiveSelection,
      mouseCursor: model.mouseCursor?.parse,
      dragStartBehavior:
          model.dragStartBehavior?.parse ?? DragStartBehavior.start,
      scrollPhysics: model.scrollPhysics?.parse,
      restorationId: model.restorationId,
      clipBehavior: model.clipBehavior?.parse ?? Clip.hardEdge,
      autofillHints: model.autofillHints,
      onTap: model.onTap == null ? null : () => model.onTap.parse(context),
      onChanged: model.onChanged == null && binding == null
          ? null
          : (value) {
              writeBound(value);
              model.onChanged.parseWithValue(context, value);
            },
      onEditingComplete: model.onEditingComplete == null
          ? null
          : () => model.onEditingComplete.parseWithValue(
              context,
              _controller.text,
            ),
      onSubmitted: model.onSubmitted == null
          ? null
          : (value) => model.onSubmitted.parseWithValue(context, value),
    );
  }
}
