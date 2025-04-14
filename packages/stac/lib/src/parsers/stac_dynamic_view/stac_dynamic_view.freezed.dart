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
            const DeepCollectionEquality().equals(other.template, template));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, request, targetPath,
      const DeepCollectionEquality().hash(template));

  @override
  String toString() {
    return 'StacDynamicView(request: $request, targetPath: $targetPath, template: $template)';
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
      Map<String, dynamic> template});

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
      this.targetPath = "",
      required final Map<String, dynamic> template})
      : _template = template;
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
            const DeepCollectionEquality().equals(other._template, _template));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, request, targetPath,
      const DeepCollectionEquality().hash(_template));

  @override
  String toString() {
    return 'StacDynamicView(request: $request, targetPath: $targetPath, template: $template)';
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
      Map<String, dynamic> template});

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
