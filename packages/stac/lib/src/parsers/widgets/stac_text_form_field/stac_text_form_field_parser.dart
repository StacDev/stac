import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/colors/stac_brightness_parser.dart';
import 'package:stac/src/parsers/foundation/decoration/stac_input_decoration_parser.dart';
import 'package:stac/src/parsers/foundation/forms/stac_autovalidate_mode_parser.dart';
import 'package:stac/src/parsers/foundation/forms/stac_input_formatter_type_parser.dart';
import 'package:stac/src/parsers/foundation/forms/stac_max_length_enforcement_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_smart_dashes_type_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_smart_quotes_type_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_align_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_capitalization_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_direction_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_input_action_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_input_type_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/parsers/widgets/stac_form/stac_form_scope.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/input_validations.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_logger/stac_logger.dart';

class StacTextFormFieldParser extends StacParser<StacTextFormField> {
  const StacTextFormFieldParser();

  @override
  StacTextFormField getModel(Map<String, dynamic> json) =>
      StacTextFormField.fromJson(json);

  @override
  String get type => WidgetType.textFormField.name;

  @override
  Widget parse(BuildContext context, StacTextFormField model) {
    return _TextFormFieldWidget(model, StacFormScope.of(context));
  }
}

class _TextFormFieldWidget extends StatefulWidget {
  const _TextFormFieldWidget(this.model, this.formScope);

  final StacTextFormField model;
  final StacFormScope? formScope;

  @override
  State<_TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<_TextFormFieldWidget> {
  late final TextEditingController _controller;
  final _focusNode = FocusNode();
  bool _obscureText = false;

  @override
  void initState() {
    super.initState();

    _obscureText = widget.model.obscureText ?? false;

    String resolvedText = widget.model.initialValue ?? '';
    final id = widget.model.id;
    final scope = widget.formScope;
    if (id != null && scope != null) {
      final existing = scope.formData[id];
      if (existing != null && existing.toString().trim().isNotEmpty) {
        resolvedText = existing.toString();
      }
      scope.formData[id] = resolvedText;
    }

    _controller = TextEditingController(text: resolvedText);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      focusNode: _focusNode,
      onChanged: (value) {
        if (widget.model.id != null) {
          widget.formScope?.formData[widget.model.id!] = value;
        }
      },
      keyboardType: widget.model.keyboardType?.parse,
      textInputAction: widget.model.textInputAction?.parse,
      textCapitalization:
          widget.model.textCapitalization?.parse ?? TextCapitalization.none,
      textAlign: widget.model.textAlign?.parse ?? TextAlign.start,
      textDirection: widget.model.textDirection?.parse,
      readOnly: widget.model.readOnly ?? false,
      showCursor: widget.model.showCursor,
      autofocus: widget.model.autofocus ?? false,
      autovalidateMode: widget.model.autovalidateMode?.parse,
      obscuringCharacter: widget.model.obscuringCharacter ?? '•',
      maxLines: widget.model.maxLines ?? 1,
      minLines: widget.model.minLines,
      maxLength: widget.model.maxLength,
      obscureText: _obscureText,
      autocorrect: widget.model.autocorrect ?? true,
      smartDashesType: widget.model.smartDashesType?.parse,
      smartQuotesType: widget.model.smartQuotesType?.parse,
      maxLengthEnforcement: widget.model.maxLengthEnforcement?.parse,
      expands: widget.model.expands ?? false,
      keyboardAppearance: widget.model.keyboardAppearance?.parse,
      scrollPadding:
          widget.model.scrollPadding?.parse ?? const EdgeInsets.all(20),
      restorationId: widget.model.restorationId,
      enableIMEPersonalizedLearning:
          widget.model.enableIMEPersonalizedLearning ?? true,
      enableSuggestions: widget.model.enableSuggestions ?? true,
      enabled: widget.model.enabled,
      cursorWidth: widget.model.cursorWidth ?? 2.0,
      cursorHeight: widget.model.cursorHeight,
      cursorColor: widget.model.cursorColor?.toColor(context),
      style: widget.model.style?.parse(context),
      decoration: widget.model.decoration?.parse(context),
      inputFormatters: widget.model.inputFormatters
          ?.map(
            (inputFormatter) => inputFormatter.type.parse.format(
              inputFormatter.rule ?? "",
              mask: inputFormatter.mask,
            ),
          )
          .toList(),
      validator: (value) {
        return _validate(value, widget.model);
      },
    );
  }

  String? _validate(String? value, StacTextFormField model) {
    if (value == null || !(model.validatorRules?.isNotEmpty ?? false)) {
      return null;
    }

    for (final validator in model.validatorRules!) {
      try {
        bool isValid;
        if (validator.rule == 'compare') {
          final targetId = validator.options?['fieldId'] as String?;
          final target = targetId == null
              ? null
              : widget.formScope?.formData[targetId]?.toString();
          isValid = value == target;
        } else {
          isValid = InputValidators.validate(
            validator.rule,
            value,
            options: validator.options,
          );
        }

        if (!isValid) return validator.message ?? 'Invalid input';
      } catch (e) {
        Log.e(e);
        return validator.message ?? 'Invalid input';
      }
    }

    return null;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
