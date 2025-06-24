// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_dynamic_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacDynamicView {
  StacNetworkRequest get request;
  String get targetPath;
  Map<String, dynamic> get template;
  String get resultTarget;
  Map<String, dynamic>? get emptyTemplate;
  StacWidget? get loaderWidget;
  StacWidget? get errorWidget;

  /// Create a copy of StacDynamicView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacDynamicViewCopyWith<StacDynamicView> get copyWith =>
      _$StacDynamicViewCopyWithImpl<StacDynamicView>(
          this as StacDynamicView, _$identity);

  /// Serializes this StacDynamicView to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacDynamicView &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.targetPath, targetPath) ||
                other.targetPath == targetPath) &&
            const DeepCollectionEquality().equals(other.template, template) &&
            (identical(other.resultTarget, resultTarget) ||
                other.resultTarget == resultTarget) &&
            const DeepCollectionEquality()
                .equals(other.emptyTemplate, emptyTemplate) &&
            const DeepCollectionEquality()
                .equals(other.loaderWidget, loaderWidget) &&
            const DeepCollectionEquality()
                .equals(other.errorWidget, errorWidget));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      request,
      targetPath,
      const DeepCollectionEquality().hash(template),
      resultTarget,
      const DeepCollectionEquality().hash(emptyTemplate),
      const DeepCollectionEquality().hash(loaderWidget),
      const DeepCollectionEquality().hash(errorWidget));

  @override
  String toString() {
    return 'StacDynamicView(request: $request, targetPath: $targetPath, template: $template, resultTarget: $resultTarget, emptyTemplate: $emptyTemplate, loaderWidget: $loaderWidget, errorWidget: $errorWidget)';
  }
}

/// @nodoc
abstract mixin class $StacDynamicViewCopyWith<$Res> {
  factory $StacDynamicViewCopyWith(
          StacDynamicView value, $Res Function(StacDynamicView) _then) =
      _$StacDynamicViewCopyWithImpl;
  @useResult
  $Res call(
      {StacNetworkRequest request,
      String targetPath,
      Map<String, dynamic> template,
      String resultTarget,
      Map<String, dynamic>? emptyTemplate,
      StacWidget? loaderWidget,
      StacWidget? errorWidget});

  $StacNetworkRequestCopyWith<$Res> get request;
}

/// @nodoc
class _$StacDynamicViewCopyWithImpl<$Res>
    implements $StacDynamicViewCopyWith<$Res> {
  _$StacDynamicViewCopyWithImpl(this._self, this._then);

  final StacDynamicView _self;
  final $Res Function(StacDynamicView) _then;

  /// Create a copy of StacDynamicView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? targetPath = null,
    Object? template = null,
    Object? resultTarget = null,
    Object? emptyTemplate = freezed,
    Object? loaderWidget = freezed,
    Object? errorWidget = freezed,
  }) {
    return _then(_self.copyWith(
      request: null == request
          ? _self.request
          : request // ignore: cast_nullable_to_non_nullable
              as StacNetworkRequest,
      targetPath: null == targetPath
          ? _self.targetPath
          : targetPath // ignore: cast_nullable_to_non_nullable
              as String,
      template: null == template
          ? _self.template
          : template // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      resultTarget: null == resultTarget
          ? _self.resultTarget
          : resultTarget // ignore: cast_nullable_to_non_nullable
              as String,
      emptyTemplate: freezed == emptyTemplate
          ? _self.emptyTemplate
          : emptyTemplate // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      loaderWidget: freezed == loaderWidget
          ? _self.loaderWidget
          : loaderWidget // ignore: cast_nullable_to_non_nullable
              as StacWidget?,
      errorWidget: freezed == errorWidget
          ? _self.errorWidget
          : errorWidget // ignore: cast_nullable_to_non_nullable
              as StacWidget?,
    ));
  }

  /// Create a copy of StacDynamicView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacNetworkRequestCopyWith<$Res> get request {
    return $StacNetworkRequestCopyWith<$Res>(_self.request, (value) {
      return _then(_self.copyWith(request: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacDynamicView implements StacDynamicView {
  const _StacDynamicView(
      {required this.request,
      this.targetPath = '',
      required final Map<String, dynamic> template,
      this.resultTarget = '',
      final Map<String, dynamic>? emptyTemplate,
      final StacWidget? loaderWidget,
      final StacWidget? errorWidget})
      : _template = template,
        _emptyTemplate = emptyTemplate,
        _loaderWidget = loaderWidget,
        _errorWidget = errorWidget;
  factory _StacDynamicView.fromJson(Map<String, dynamic> json) =>
      _$StacDynamicViewFromJson(json);

  @override
  final StacNetworkRequest request;
  @override
  @JsonKey()
  final String targetPath;
  final Map<String, dynamic> _template;
  @override
  Map<String, dynamic> get template {
    if (_template is EqualUnmodifiableMapView) return _template;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_template);
  }

  @override
  @JsonKey()
  final String resultTarget;
  final Map<String, dynamic>? _emptyTemplate;
  @override
  Map<String, dynamic>? get emptyTemplate {
    final value = _emptyTemplate;
    if (value == null) return null;
    if (_emptyTemplate is EqualUnmodifiableMapView) return _emptyTemplate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final StacWidget? _loaderWidget;
  @override
  StacWidget? get loaderWidget {
    final value = _loaderWidget;
    if (value == null) return null;
    if (_loaderWidget is EqualUnmodifiableMapView) return _loaderWidget;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final StacWidget? _errorWidget;
  @override
  StacWidget? get errorWidget {
    final value = _errorWidget;
    if (value == null) return null;
    if (_errorWidget is EqualUnmodifiableMapView) return _errorWidget;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StacDynamicView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacDynamicViewCopyWith<_StacDynamicView> get copyWith =>
      __$StacDynamicViewCopyWithImpl<_StacDynamicView>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacDynamicViewToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacDynamicView &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.targetPath, targetPath) ||
                other.targetPath == targetPath) &&
            const DeepCollectionEquality().equals(other._template, _template) &&
            (identical(other.resultTarget, resultTarget) ||
                other.resultTarget == resultTarget) &&
            const DeepCollectionEquality()
                .equals(other._emptyTemplate, _emptyTemplate) &&
            const DeepCollectionEquality()
                .equals(other._loaderWidget, _loaderWidget) &&
            const DeepCollectionEquality()
                .equals(other._errorWidget, _errorWidget));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      request,
      targetPath,
      const DeepCollectionEquality().hash(_template),
      resultTarget,
      const DeepCollectionEquality().hash(_emptyTemplate),
      const DeepCollectionEquality().hash(_loaderWidget),
      const DeepCollectionEquality().hash(_errorWidget));

  @override
  String toString() {
    return 'StacDynamicView(request: $request, targetPath: $targetPath, template: $template, resultTarget: $resultTarget, emptyTemplate: $emptyTemplate, loaderWidget: $loaderWidget, errorWidget: $errorWidget)';
  }
}

/// @nodoc
abstract mixin class _$StacDynamicViewCopyWith<$Res>
    implements $StacDynamicViewCopyWith<$Res> {
  factory _$StacDynamicViewCopyWith(
          _StacDynamicView value, $Res Function(_StacDynamicView) _then) =
      __$StacDynamicViewCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacNetworkRequest request,
      String targetPath,
      Map<String, dynamic> template,
      String resultTarget,
      Map<String, dynamic>? emptyTemplate,
      StacWidget? loaderWidget,
      StacWidget? errorWidget});

  @override
  $StacNetworkRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$StacDynamicViewCopyWithImpl<$Res>
    implements _$StacDynamicViewCopyWith<$Res> {
  __$StacDynamicViewCopyWithImpl(this._self, this._then);

  final _StacDynamicView _self;
  final $Res Function(_StacDynamicView) _then;

  /// Create a copy of StacDynamicView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? request = null,
    Object? targetPath = null,
    Object? template = null,
    Object? resultTarget = null,
    Object? emptyTemplate = freezed,
    Object? loaderWidget = freezed,
    Object? errorWidget = freezed,
  }) {
    return _then(_StacDynamicView(
      request: null == request
          ? _self.request
          : request // ignore: cast_nullable_to_non_nullable
              as StacNetworkRequest,
      targetPath: null == targetPath
          ? _self.targetPath
          : targetPath // ignore: cast_nullable_to_non_nullable
              as String,
      template: null == template
          ? _self._template
          : template // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      resultTarget: null == resultTarget
          ? _self.resultTarget
          : resultTarget // ignore: cast_nullable_to_non_nullable
              as String,
      emptyTemplate: freezed == emptyTemplate
          ? _self._emptyTemplate
          : emptyTemplate // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      loaderWidget: freezed == loaderWidget
          ? _self._loaderWidget
          : loaderWidget // ignore: cast_nullable_to_non_nullable
              as StacWidget?,
      errorWidget: freezed == errorWidget
          ? _self._errorWidget
          : errorWidget // ignore: cast_nullable_to_non_nullable
              as StacWidget?,
    ));
  }

  /// Create a copy of StacDynamicView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacNetworkRequestCopyWith<$Res> get request {
    return $StacNetworkRequestCopyWith<$Res>(_self.request, (value) {
      return _then(_self.copyWith(request: value));
    });
  }
}

// dart format on
