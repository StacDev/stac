import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
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
    return _StacTextField(
      model: model,
      controller: controller,
      focusNode: focusNode,
    );
  }
}

class _StacTextField extends StatefulWidget {
  const _StacTextField({required this.model, this.controller, this.focusNode});

  final StacTextField model;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  @override
  State<_StacTextField> createState() => _StacTextFieldState();
}

class _StacTextFieldState extends State<_StacTextField> {
  // Created once, so typed text survives rebuilds. Not used when the parser
  // is given a controller.
  TextEditingController? _ownController;

  TextEditingController get _controller =>
      widget.controller ?? (_ownController ??= _newController());

  TextEditingController _newController() =>
      TextEditingController(text: widget.model.initialValue ?? '');

  @override
  void initState() {
    super.initState();
    if (widget.controller != null &&
        (widget.model.initialValue ?? '').isNotEmpty) {
      widget.controller!.text = widget.model.initialValue!;
    }
  }

  @override
  void didUpdateWidget(covariant _StacTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    // A new initialValue from the JSON replaces the text, as a new value does
    // for the other inputs.
    if (oldWidget.model.initialValue != widget.model.initialValue) {
      _controller.text = widget.model.initialValue ?? '';
    }
  }

  @override
  void dispose() {
    _ownController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
      // One line unless set, as in Flutter. expands needs null, and minLines
      // alone means the field starts at minLines and grows.
      maxLines:
          model.maxLines ??
          ((model.expands ?? false) || model.minLines != null ? null : 1),
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
      onTap: model.onTap == null ? null : () => model.onTap!.parse(context),
      onChanged: model.onChanged == null
          ? null
          : (value) => model.onChanged!.parse(context),
      onEditingComplete: model.onEditingComplete == null
          ? null
          : () => model.onEditingComplete!.parse(context),
      onSubmitted: model.onSubmitted == null
          ? null
          : (value) => model.onSubmitted!.parse(context),
    );
  }
}
