// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_dynamic_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacDynamicView _$StacDynamicViewFromJson(Map<String, dynamic> json) {
  return _StacDynamicView.fromJson(json);
}

/// @nodoc
mixin _$StacDynamicView {
  StacNetworkRequest get request => throw _privateConstructorUsedError;
  String get targetPath => throw _privateConstructorUsedError;
  Map<String, dynamic> get template => throw _privateConstructorUsedError;

  /// Serializes this StacDynamicView to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacDynamicView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacDynamicViewCopyWith<StacDynamicView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacDynamicViewCopyWith<$Res> {
  factory $StacDynamicViewCopyWith(
          StacDynamicView value, $Res Function(StacDynamicView) then) =
      _$StacDynamicViewCopyWithImpl<$Res, StacDynamicView>;
  @useResult
  $Res call(
      {StacNetworkRequest request,
      String targetPath,
      Map<String, dynamic> template});

  $StacNetworkRequestCopyWith<$Res> get request;
}

/// @nodoc
class _$StacDynamicViewCopyWithImpl<$Res, $Val extends StacDynamicView>
    implements $StacDynamicViewCopyWith<$Res> {
  _$StacDynamicViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacDynamicView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? targetPath = null,
    Object? template = null,
  }) {
    return _then(_value.copyWith(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as StacNetworkRequest,
      targetPath: null == targetPath
          ? _value.targetPath
          : targetPath // ignore: cast_nullable_to_non_nullable
              as String,
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }

  /// Create a copy of StacDynamicView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacNetworkRequestCopyWith<$Res> get request {
    return $StacNetworkRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StacDynamicViewImplCopyWith<$Res>
    implements $StacDynamicViewCopyWith<$Res> {
  factory _$$StacDynamicViewImplCopyWith(_$StacDynamicViewImpl value,
          $Res Function(_$StacDynamicViewImpl) then) =
      __$$StacDynamicViewImplCopyWithImpl<$Res>;
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
class __$$StacDynamicViewImplCopyWithImpl<$Res>
    extends _$StacDynamicViewCopyWithImpl<$Res, _$StacDynamicViewImpl>
    implements _$$StacDynamicViewImplCopyWith<$Res> {
  __$$StacDynamicViewImplCopyWithImpl(
      _$StacDynamicViewImpl _value, $Res Function(_$StacDynamicViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacDynamicView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? targetPath = null,
    Object? template = null,
  }) {
    return _then(_$StacDynamicViewImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as StacNetworkRequest,
      targetPath: null == targetPath
          ? _value.targetPath
          : targetPath // ignore: cast_nullable_to_non_nullable
              as String,
      template: null == template
          ? _value._template
          : template // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacDynamicViewImpl implements _StacDynamicView {
  const _$StacDynamicViewImpl(
      {required this.request,
      this.targetPath = '',
      required final Map<String, dynamic> template})
      : _template = template;

  factory _$StacDynamicViewImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacDynamicViewImplFromJson(json);

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
  String toString() {
    return 'StacDynamicView(request: $request, targetPath: $targetPath, template: $template)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacDynamicViewImpl &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.targetPath, targetPath) ||
                other.targetPath == targetPath) &&
            const DeepCollectionEquality().equals(other._template, _template));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, request, targetPath,
      const DeepCollectionEquality().hash(_template));

  /// Create a copy of StacDynamicView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacDynamicViewImplCopyWith<_$StacDynamicViewImpl> get copyWith =>
      __$$StacDynamicViewImplCopyWithImpl<_$StacDynamicViewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacDynamicViewImplToJson(
      this,
    );
  }
}

abstract class _StacDynamicView implements StacDynamicView {
  const factory _StacDynamicView(
      {required final StacNetworkRequest request,
      final String targetPath,
      required final Map<String, dynamic> template}) = _$StacDynamicViewImpl;

  factory _StacDynamicView.fromJson(Map<String, dynamic> json) =
      _$StacDynamicViewImpl.fromJson;

  @override
  StacNetworkRequest get request;
  @override
  String get targetPath;
  @override
  Map<String, dynamic> get template;

  /// Create a copy of StacDynamicView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacDynamicViewImplCopyWith<_$StacDynamicViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
