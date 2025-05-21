// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_dropdown_menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacDropdownMenu {
  bool get enabled;
  StacDouble? get width;
  StacDouble? get menuHeight;
  Map<String, dynamic>? get leadingIcon;
  Map<String, dynamic>? get trailingIcon;
  Map<String, dynamic>? get label;
  String? get hintText;
  String? get helperText;
  String? get errorText;
  Map<String, dynamic>? get selectedTrailingIcon;
  bool? get enableFilter;
  bool? get enableSearch;
  StacTextInputType? get keyboardType;
  StacTextStyle? get textStyle;
  TextAlign get textAlign;
  StacInputDecorationTheme? get inputDecorationTheme;
  List<StacInputFormatter> get inputFormatters;
  StacOffset? get alignmentOffset;
  StacEdgeInsets? get expandedInsets;
  bool? get requestFocusOnTap;
  dynamic get initialSelection;
  List<StacDropdownMenuEntry> get dropdownMenuEntries;
  DropdownMenuCloseBehavior? get closeBehavior;

  /// Create a copy of StacDropdownMenu
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacDropdownMenuCopyWith<StacDropdownMenu> get copyWith =>
      _$StacDropdownMenuCopyWithImpl<StacDropdownMenu>(
          this as StacDropdownMenu, _$identity);

  /// Serializes this StacDropdownMenu to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacDropdownMenu &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.menuHeight, menuHeight) ||
                other.menuHeight == menuHeight) &&
            const DeepCollectionEquality()
                .equals(other.leadingIcon, leadingIcon) &&
            const DeepCollectionEquality()
                .equals(other.trailingIcon, trailingIcon) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            const DeepCollectionEquality()
                .equals(other.selectedTrailingIcon, selectedTrailingIcon) &&
            (identical(other.enableFilter, enableFilter) ||
                other.enableFilter == enableFilter) &&
            (identical(other.enableSearch, enableSearch) ||
                other.enableSearch == enableSearch) &&
            (identical(other.keyboardType, keyboardType) ||
                other.keyboardType == keyboardType) &&
            (identical(other.textStyle, textStyle) ||
                other.textStyle == textStyle) &&
            (identical(other.textAlign, textAlign) ||
                other.textAlign == textAlign) &&
            (identical(other.inputDecorationTheme, inputDecorationTheme) ||
                other.inputDecorationTheme == inputDecorationTheme) &&
            const DeepCollectionEquality()
                .equals(other.inputFormatters, inputFormatters) &&
            (identical(other.alignmentOffset, alignmentOffset) ||
                other.alignmentOffset == alignmentOffset) &&
            (identical(other.expandedInsets, expandedInsets) ||
                other.expandedInsets == expandedInsets) &&
            (identical(other.requestFocusOnTap, requestFocusOnTap) ||
                other.requestFocusOnTap == requestFocusOnTap) &&
            const DeepCollectionEquality()
                .equals(other.initialSelection, initialSelection) &&
            const DeepCollectionEquality()
                .equals(other.dropdownMenuEntries, dropdownMenuEntries) &&
            (identical(other.closeBehavior, closeBehavior) ||
                other.closeBehavior == closeBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enabled,
        width,
        menuHeight,
        const DeepCollectionEquality().hash(leadingIcon),
        const DeepCollectionEquality().hash(trailingIcon),
        const DeepCollectionEquality().hash(label),
        hintText,
        helperText,
        errorText,
        const DeepCollectionEquality().hash(selectedTrailingIcon),
        enableFilter,
        enableSearch,
        keyboardType,
        textStyle,
        textAlign,
        inputDecorationTheme,
        const DeepCollectionEquality().hash(inputFormatters),
        alignmentOffset,
        expandedInsets,
        requestFocusOnTap,
        const DeepCollectionEquality().hash(initialSelection),
        const DeepCollectionEquality().hash(dropdownMenuEntries),
        closeBehavior
      ]);

  @override
  String toString() {
    return 'StacDropdownMenu(enabled: $enabled, width: $width, menuHeight: $menuHeight, leadingIcon: $leadingIcon, trailingIcon: $trailingIcon, label: $label, hintText: $hintText, helperText: $helperText, errorText: $errorText, selectedTrailingIcon: $selectedTrailingIcon, enableFilter: $enableFilter, enableSearch: $enableSearch, keyboardType: $keyboardType, textStyle: $textStyle, textAlign: $textAlign, inputDecorationTheme: $inputDecorationTheme, inputFormatters: $inputFormatters, alignmentOffset: $alignmentOffset, expandedInsets: $expandedInsets, requestFocusOnTap: $requestFocusOnTap, initialSelection: $initialSelection, dropdownMenuEntries: $dropdownMenuEntries, closeBehavior: $closeBehavior)';
  }
}

/// @nodoc
abstract mixin class $StacDropdownMenuCopyWith<$Res> {
  factory $StacDropdownMenuCopyWith(
          StacDropdownMenu value, $Res Function(StacDropdownMenu) _then) =
      _$StacDropdownMenuCopyWithImpl;
  @useResult
  $Res call(
      {bool enabled,
      StacDouble? width,
      StacDouble? menuHeight,
      Map<String, dynamic>? leadingIcon,
      Map<String, dynamic>? trailingIcon,
      Map<String, dynamic>? label,
      String? hintText,
      String? helperText,
      String? errorText,
      Map<String, dynamic>? selectedTrailingIcon,
      bool? enableFilter,
      bool? enableSearch,
      StacTextInputType? keyboardType,
      StacTextStyle? textStyle,
      TextAlign textAlign,
      StacInputDecorationTheme? inputDecorationTheme,
      List<StacInputFormatter> inputFormatters,
      StacOffset? alignmentOffset,
      StacEdgeInsets? expandedInsets,
      bool? requestFocusOnTap,
      dynamic initialSelection,
      List<StacDropdownMenuEntry> dropdownMenuEntries,
      DropdownMenuCloseBehavior? closeBehavior});

  $StacTextStyleCopyWith<$Res>? get textStyle;
  $StacInputDecorationThemeCopyWith<$Res>? get inputDecorationTheme;
  $StacOffsetCopyWith<$Res>? get alignmentOffset;
  $StacEdgeInsetsCopyWith<$Res>? get expandedInsets;
}

/// @nodoc
class _$StacDropdownMenuCopyWithImpl<$Res>
    implements $StacDropdownMenuCopyWith<$Res> {
  _$StacDropdownMenuCopyWithImpl(this._self, this._then);

  final StacDropdownMenu _self;
  final $Res Function(StacDropdownMenu) _then;

  /// Create a copy of StacDropdownMenu
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
    Object? width = freezed,
    Object? menuHeight = freezed,
    Object? leadingIcon = freezed,
    Object? trailingIcon = freezed,
    Object? label = freezed,
    Object? hintText = freezed,
    Object? helperText = freezed,
    Object? errorText = freezed,
    Object? selectedTrailingIcon = freezed,
    Object? enableFilter = freezed,
    Object? enableSearch = freezed,
    Object? keyboardType = freezed,
    Object? textStyle = freezed,
    Object? textAlign = null,
    Object? inputDecorationTheme = freezed,
    Object? inputFormatters = null,
    Object? alignmentOffset = freezed,
    Object? expandedInsets = freezed,
    Object? requestFocusOnTap = freezed,
    Object? initialSelection = freezed,
    Object? dropdownMenuEntries = null,
    Object? closeBehavior = freezed,
  }) {
    return _then(_self.copyWith(
      enabled: null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      menuHeight: freezed == menuHeight
          ? _self.menuHeight
          : menuHeight // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      leadingIcon: freezed == leadingIcon
          ? _self.leadingIcon
          : leadingIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      trailingIcon: freezed == trailingIcon
          ? _self.trailingIcon
          : trailingIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      errorText: freezed == errorText
          ? _self.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTrailingIcon: freezed == selectedTrailingIcon
          ? _self.selectedTrailingIcon
          : selectedTrailingIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      enableFilter: freezed == enableFilter
          ? _self.enableFilter
          : enableFilter // ignore: cast_nullable_to_non_nullable
              as bool?,
      enableSearch: freezed == enableSearch
          ? _self.enableSearch
          : enableSearch // ignore: cast_nullable_to_non_nullable
              as bool?,
      keyboardType: freezed == keyboardType
          ? _self.keyboardType
          : keyboardType // ignore: cast_nullable_to_non_nullable
              as StacTextInputType?,
      textStyle: freezed == textStyle
          ? _self.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      textAlign: null == textAlign
          ? _self.textAlign
          : textAlign // ignore: cast_nullable_to_non_nullable
              as TextAlign,
      inputDecorationTheme: freezed == inputDecorationTheme
          ? _self.inputDecorationTheme
          : inputDecorationTheme // ignore: cast_nullable_to_non_nullable
              as StacInputDecorationTheme?,
      inputFormatters: null == inputFormatters
          ? _self.inputFormatters
          : inputFormatters // ignore: cast_nullable_to_non_nullable
              as List<StacInputFormatter>,
      alignmentOffset: freezed == alignmentOffset
          ? _self.alignmentOffset
          : alignmentOffset // ignore: cast_nullable_to_non_nullable
              as StacOffset?,
      expandedInsets: freezed == expandedInsets
          ? _self.expandedInsets
          : expandedInsets // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      requestFocusOnTap: freezed == requestFocusOnTap
          ? _self.requestFocusOnTap
          : requestFocusOnTap // ignore: cast_nullable_to_non_nullable
              as bool?,
      initialSelection: freezed == initialSelection
          ? _self.initialSelection
          : initialSelection // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dropdownMenuEntries: null == dropdownMenuEntries
          ? _self.dropdownMenuEntries
          : dropdownMenuEntries // ignore: cast_nullable_to_non_nullable
              as List<StacDropdownMenuEntry>,
      closeBehavior: freezed == closeBehavior
          ? _self.closeBehavior
          : closeBehavior // ignore: cast_nullable_to_non_nullable
              as DropdownMenuCloseBehavior?,
    ));
  }

  /// Create a copy of StacDropdownMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get textStyle {
    if (_self.textStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.textStyle!, (value) {
      return _then(_self.copyWith(textStyle: value));
    });
  }

  /// Create a copy of StacDropdownMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacInputDecorationThemeCopyWith<$Res>? get inputDecorationTheme {
    if (_self.inputDecorationTheme == null) {
      return null;
    }

    return $StacInputDecorationThemeCopyWith<$Res>(_self.inputDecorationTheme!,
        (value) {
      return _then(_self.copyWith(inputDecorationTheme: value));
    });
  }

  /// Create a copy of StacDropdownMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacOffsetCopyWith<$Res>? get alignmentOffset {
    if (_self.alignmentOffset == null) {
      return null;
    }

    return $StacOffsetCopyWith<$Res>(_self.alignmentOffset!, (value) {
      return _then(_self.copyWith(alignmentOffset: value));
    });
  }

  /// Create a copy of StacDropdownMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get expandedInsets {
    if (_self.expandedInsets == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.expandedInsets!, (value) {
      return _then(_self.copyWith(expandedInsets: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacDropdownMenu implements StacDropdownMenu {
  const _StacDropdownMenu(
      {this.enabled = true,
      this.width,
      this.menuHeight,
      final Map<String, dynamic>? leadingIcon,
      final Map<String, dynamic>? trailingIcon,
      final Map<String, dynamic>? label,
      this.hintText,
      this.helperText,
      this.errorText,
      final Map<String, dynamic>? selectedTrailingIcon,
      this.enableFilter,
      this.enableSearch,
      this.keyboardType,
      this.textStyle,
      this.textAlign = TextAlign.start,
      this.inputDecorationTheme,
      final List<StacInputFormatter> inputFormatters = const [],
      this.alignmentOffset,
      this.expandedInsets,
      this.requestFocusOnTap,
      this.initialSelection,
      final List<StacDropdownMenuEntry> dropdownMenuEntries = const [],
      this.closeBehavior = DropdownMenuCloseBehavior.all})
      : _leadingIcon = leadingIcon,
        _trailingIcon = trailingIcon,
        _label = label,
        _selectedTrailingIcon = selectedTrailingIcon,
        _inputFormatters = inputFormatters,
        _dropdownMenuEntries = dropdownMenuEntries;
  factory _StacDropdownMenu.fromJson(Map<String, dynamic> json) =>
      _$StacDropdownMenuFromJson(json);

  @override
  @JsonKey()
  final bool enabled;
  @override
  final StacDouble? width;
  @override
  final StacDouble? menuHeight;
  final Map<String, dynamic>? _leadingIcon;
  @override
  Map<String, dynamic>? get leadingIcon {
    final value = _leadingIcon;
    if (value == null) return null;
    if (_leadingIcon is EqualUnmodifiableMapView) return _leadingIcon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _trailingIcon;
  @override
  Map<String, dynamic>? get trailingIcon {
    final value = _trailingIcon;
    if (value == null) return null;
    if (_trailingIcon is EqualUnmodifiableMapView) return _trailingIcon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _label;
  @override
  Map<String, dynamic>? get label {
    final value = _label;
    if (value == null) return null;
    if (_label is EqualUnmodifiableMapView) return _label;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? hintText;
  @override
  final String? helperText;
  @override
  final String? errorText;
  final Map<String, dynamic>? _selectedTrailingIcon;
  @override
  Map<String, dynamic>? get selectedTrailingIcon {
    final value = _selectedTrailingIcon;
    if (value == null) return null;
    if (_selectedTrailingIcon is EqualUnmodifiableMapView)
      return _selectedTrailingIcon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final bool? enableFilter;
  @override
  final bool? enableSearch;
  @override
  final StacTextInputType? keyboardType;
  @override
  final StacTextStyle? textStyle;
  @override
  @JsonKey()
  final TextAlign textAlign;
  @override
  final StacInputDecorationTheme? inputDecorationTheme;
  final List<StacInputFormatter> _inputFormatters;
  @override
  @JsonKey()
  List<StacInputFormatter> get inputFormatters {
    if (_inputFormatters is EqualUnmodifiableListView) return _inputFormatters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inputFormatters);
  }

  @override
  final StacOffset? alignmentOffset;
  @override
  final StacEdgeInsets? expandedInsets;
  @override
  final bool? requestFocusOnTap;
  @override
  final dynamic initialSelection;
  final List<StacDropdownMenuEntry> _dropdownMenuEntries;
  @override
  @JsonKey()
  List<StacDropdownMenuEntry> get dropdownMenuEntries {
    if (_dropdownMenuEntries is EqualUnmodifiableListView)
      return _dropdownMenuEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dropdownMenuEntries);
  }

  @override
  @JsonKey()
  final DropdownMenuCloseBehavior? closeBehavior;

  /// Create a copy of StacDropdownMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacDropdownMenuCopyWith<_StacDropdownMenu> get copyWith =>
      __$StacDropdownMenuCopyWithImpl<_StacDropdownMenu>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacDropdownMenuToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacDropdownMenu &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.menuHeight, menuHeight) ||
                other.menuHeight == menuHeight) &&
            const DeepCollectionEquality()
                .equals(other._leadingIcon, _leadingIcon) &&
            const DeepCollectionEquality()
                .equals(other._trailingIcon, _trailingIcon) &&
            const DeepCollectionEquality().equals(other._label, _label) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            const DeepCollectionEquality()
                .equals(other._selectedTrailingIcon, _selectedTrailingIcon) &&
            (identical(other.enableFilter, enableFilter) ||
                other.enableFilter == enableFilter) &&
            (identical(other.enableSearch, enableSearch) ||
                other.enableSearch == enableSearch) &&
            (identical(other.keyboardType, keyboardType) ||
                other.keyboardType == keyboardType) &&
            (identical(other.textStyle, textStyle) ||
                other.textStyle == textStyle) &&
            (identical(other.textAlign, textAlign) ||
                other.textAlign == textAlign) &&
            (identical(other.inputDecorationTheme, inputDecorationTheme) ||
                other.inputDecorationTheme == inputDecorationTheme) &&
            const DeepCollectionEquality()
                .equals(other._inputFormatters, _inputFormatters) &&
            (identical(other.alignmentOffset, alignmentOffset) ||
                other.alignmentOffset == alignmentOffset) &&
            (identical(other.expandedInsets, expandedInsets) ||
                other.expandedInsets == expandedInsets) &&
            (identical(other.requestFocusOnTap, requestFocusOnTap) ||
                other.requestFocusOnTap == requestFocusOnTap) &&
            const DeepCollectionEquality()
                .equals(other.initialSelection, initialSelection) &&
            const DeepCollectionEquality()
                .equals(other._dropdownMenuEntries, _dropdownMenuEntries) &&
            (identical(other.closeBehavior, closeBehavior) ||
                other.closeBehavior == closeBehavior));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        enabled,
        width,
        menuHeight,
        const DeepCollectionEquality().hash(_leadingIcon),
        const DeepCollectionEquality().hash(_trailingIcon),
        const DeepCollectionEquality().hash(_label),
        hintText,
        helperText,
        errorText,
        const DeepCollectionEquality().hash(_selectedTrailingIcon),
        enableFilter,
        enableSearch,
        keyboardType,
        textStyle,
        textAlign,
        inputDecorationTheme,
        const DeepCollectionEquality().hash(_inputFormatters),
        alignmentOffset,
        expandedInsets,
        requestFocusOnTap,
        const DeepCollectionEquality().hash(initialSelection),
        const DeepCollectionEquality().hash(_dropdownMenuEntries),
        closeBehavior
      ]);

  @override
  String toString() {
    return 'StacDropdownMenu(enabled: $enabled, width: $width, menuHeight: $menuHeight, leadingIcon: $leadingIcon, trailingIcon: $trailingIcon, label: $label, hintText: $hintText, helperText: $helperText, errorText: $errorText, selectedTrailingIcon: $selectedTrailingIcon, enableFilter: $enableFilter, enableSearch: $enableSearch, keyboardType: $keyboardType, textStyle: $textStyle, textAlign: $textAlign, inputDecorationTheme: $inputDecorationTheme, inputFormatters: $inputFormatters, alignmentOffset: $alignmentOffset, expandedInsets: $expandedInsets, requestFocusOnTap: $requestFocusOnTap, initialSelection: $initialSelection, dropdownMenuEntries: $dropdownMenuEntries, closeBehavior: $closeBehavior)';
  }
}

/// @nodoc
abstract mixin class _$StacDropdownMenuCopyWith<$Res>
    implements $StacDropdownMenuCopyWith<$Res> {
  factory _$StacDropdownMenuCopyWith(
          _StacDropdownMenu value, $Res Function(_StacDropdownMenu) _then) =
      __$StacDropdownMenuCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool enabled,
      StacDouble? width,
      StacDouble? menuHeight,
      Map<String, dynamic>? leadingIcon,
      Map<String, dynamic>? trailingIcon,
      Map<String, dynamic>? label,
      String? hintText,
      String? helperText,
      String? errorText,
      Map<String, dynamic>? selectedTrailingIcon,
      bool? enableFilter,
      bool? enableSearch,
      StacTextInputType? keyboardType,
      StacTextStyle? textStyle,
      TextAlign textAlign,
      StacInputDecorationTheme? inputDecorationTheme,
      List<StacInputFormatter> inputFormatters,
      StacOffset? alignmentOffset,
      StacEdgeInsets? expandedInsets,
      bool? requestFocusOnTap,
      dynamic initialSelection,
      List<StacDropdownMenuEntry> dropdownMenuEntries,
      DropdownMenuCloseBehavior? closeBehavior});

  @override
  $StacTextStyleCopyWith<$Res>? get textStyle;
  @override
  $StacInputDecorationThemeCopyWith<$Res>? get inputDecorationTheme;
  @override
  $StacOffsetCopyWith<$Res>? get alignmentOffset;
  @override
  $StacEdgeInsetsCopyWith<$Res>? get expandedInsets;
}

/// @nodoc
class __$StacDropdownMenuCopyWithImpl<$Res>
    implements _$StacDropdownMenuCopyWith<$Res> {
  __$StacDropdownMenuCopyWithImpl(this._self, this._then);

  final _StacDropdownMenu _self;
  final $Res Function(_StacDropdownMenu) _then;

  /// Create a copy of StacDropdownMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? enabled = null,
    Object? width = freezed,
    Object? menuHeight = freezed,
    Object? leadingIcon = freezed,
    Object? trailingIcon = freezed,
    Object? label = freezed,
    Object? hintText = freezed,
    Object? helperText = freezed,
    Object? errorText = freezed,
    Object? selectedTrailingIcon = freezed,
    Object? enableFilter = freezed,
    Object? enableSearch = freezed,
    Object? keyboardType = freezed,
    Object? textStyle = freezed,
    Object? textAlign = null,
    Object? inputDecorationTheme = freezed,
    Object? inputFormatters = null,
    Object? alignmentOffset = freezed,
    Object? expandedInsets = freezed,
    Object? requestFocusOnTap = freezed,
    Object? initialSelection = freezed,
    Object? dropdownMenuEntries = null,
    Object? closeBehavior = freezed,
  }) {
    return _then(_StacDropdownMenu(
      enabled: null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      menuHeight: freezed == menuHeight
          ? _self.menuHeight
          : menuHeight // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      leadingIcon: freezed == leadingIcon
          ? _self._leadingIcon
          : leadingIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      trailingIcon: freezed == trailingIcon
          ? _self._trailingIcon
          : trailingIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      label: freezed == label
          ? _self._label
          : label // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      errorText: freezed == errorText
          ? _self.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTrailingIcon: freezed == selectedTrailingIcon
          ? _self._selectedTrailingIcon
          : selectedTrailingIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      enableFilter: freezed == enableFilter
          ? _self.enableFilter
          : enableFilter // ignore: cast_nullable_to_non_nullable
              as bool?,
      enableSearch: freezed == enableSearch
          ? _self.enableSearch
          : enableSearch // ignore: cast_nullable_to_non_nullable
              as bool?,
      keyboardType: freezed == keyboardType
          ? _self.keyboardType
          : keyboardType // ignore: cast_nullable_to_non_nullable
              as StacTextInputType?,
      textStyle: freezed == textStyle
          ? _self.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as StacTextStyle?,
      textAlign: null == textAlign
          ? _self.textAlign
          : textAlign // ignore: cast_nullable_to_non_nullable
              as TextAlign,
      inputDecorationTheme: freezed == inputDecorationTheme
          ? _self.inputDecorationTheme
          : inputDecorationTheme // ignore: cast_nullable_to_non_nullable
              as StacInputDecorationTheme?,
      inputFormatters: null == inputFormatters
          ? _self._inputFormatters
          : inputFormatters // ignore: cast_nullable_to_non_nullable
              as List<StacInputFormatter>,
      alignmentOffset: freezed == alignmentOffset
          ? _self.alignmentOffset
          : alignmentOffset // ignore: cast_nullable_to_non_nullable
              as StacOffset?,
      expandedInsets: freezed == expandedInsets
          ? _self.expandedInsets
          : expandedInsets // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
      requestFocusOnTap: freezed == requestFocusOnTap
          ? _self.requestFocusOnTap
          : requestFocusOnTap // ignore: cast_nullable_to_non_nullable
              as bool?,
      initialSelection: freezed == initialSelection
          ? _self.initialSelection
          : initialSelection // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dropdownMenuEntries: null == dropdownMenuEntries
          ? _self._dropdownMenuEntries
          : dropdownMenuEntries // ignore: cast_nullable_to_non_nullable
              as List<StacDropdownMenuEntry>,
      closeBehavior: freezed == closeBehavior
          ? _self.closeBehavior
          : closeBehavior // ignore: cast_nullable_to_non_nullable
              as DropdownMenuCloseBehavior?,
    ));
  }

  /// Create a copy of StacDropdownMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacTextStyleCopyWith<$Res>? get textStyle {
    if (_self.textStyle == null) {
      return null;
    }

    return $StacTextStyleCopyWith<$Res>(_self.textStyle!, (value) {
      return _then(_self.copyWith(textStyle: value));
    });
  }

  /// Create a copy of StacDropdownMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacInputDecorationThemeCopyWith<$Res>? get inputDecorationTheme {
    if (_self.inputDecorationTheme == null) {
      return null;
    }

    return $StacInputDecorationThemeCopyWith<$Res>(_self.inputDecorationTheme!,
        (value) {
      return _then(_self.copyWith(inputDecorationTheme: value));
    });
  }

  /// Create a copy of StacDropdownMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacOffsetCopyWith<$Res>? get alignmentOffset {
    if (_self.alignmentOffset == null) {
      return null;
    }

    return $StacOffsetCopyWith<$Res>(_self.alignmentOffset!, (value) {
      return _then(_self.copyWith(alignmentOffset: value));
    });
  }

  /// Create a copy of StacDropdownMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacEdgeInsetsCopyWith<$Res>? get expandedInsets {
    if (_self.expandedInsets == null) {
      return null;
    }

    return $StacEdgeInsetsCopyWith<$Res>(_self.expandedInsets!, (value) {
      return _then(_self.copyWith(expandedInsets: value));
    });
  }
}

// dart format on
