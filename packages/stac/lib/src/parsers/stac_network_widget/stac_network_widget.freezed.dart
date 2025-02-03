// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_network_widget.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacNetworkWidget _$StacNetworkWidgetFromJson(Map<String, dynamic> json) {
  return _StacNetworkWidget.fromJson(json);
}

/// @nodoc
mixin _$StacNetworkWidget {
  StacNetworkRequest get request => throw _privateConstructorUsedError;

  /// Serializes this StacNetworkWidget to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacNetworkWidget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacNetworkWidgetCopyWith<StacNetworkWidget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacNetworkWidgetCopyWith<$Res> {
  factory $StacNetworkWidgetCopyWith(
          StacNetworkWidget value, $Res Function(StacNetworkWidget) then) =
      _$StacNetworkWidgetCopyWithImpl<$Res, StacNetworkWidget>;
  @useResult
  $Res call({StacNetworkRequest request});

  $StacNetworkRequestCopyWith<$Res> get request;
}

/// @nodoc
class _$StacNetworkWidgetCopyWithImpl<$Res, $Val extends StacNetworkWidget>
    implements $StacNetworkWidgetCopyWith<$Res> {
  _$StacNetworkWidgetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacNetworkWidget
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_value.copyWith(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as StacNetworkRequest,
    ) as $Val);
  }

  /// Create a copy of StacNetworkWidget
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
abstract class _$$StacNetworkWidgetImplCopyWith<$Res>
    implements $StacNetworkWidgetCopyWith<$Res> {
  factory _$$StacNetworkWidgetImplCopyWith(_$StacNetworkWidgetImpl value,
          $Res Function(_$StacNetworkWidgetImpl) then) =
      __$$StacNetworkWidgetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StacNetworkRequest request});

  @override
  $StacNetworkRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$StacNetworkWidgetImplCopyWithImpl<$Res>
    extends _$StacNetworkWidgetCopyWithImpl<$Res, _$StacNetworkWidgetImpl>
    implements _$$StacNetworkWidgetImplCopyWith<$Res> {
  __$$StacNetworkWidgetImplCopyWithImpl(_$StacNetworkWidgetImpl _value,
      $Res Function(_$StacNetworkWidgetImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacNetworkWidget
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$StacNetworkWidgetImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as StacNetworkRequest,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacNetworkWidgetImpl implements _StacNetworkWidget {
  const _$StacNetworkWidgetImpl({required this.request});

  factory _$StacNetworkWidgetImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacNetworkWidgetImplFromJson(json);

  @override
  final StacNetworkRequest request;

  @override
  String toString() {
    return 'StacNetworkWidget(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacNetworkWidgetImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of StacNetworkWidget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacNetworkWidgetImplCopyWith<_$StacNetworkWidgetImpl> get copyWith =>
      __$$StacNetworkWidgetImplCopyWithImpl<_$StacNetworkWidgetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacNetworkWidgetImplToJson(
      this,
    );
  }
}

abstract class _StacNetworkWidget implements StacNetworkWidget {
  const factory _StacNetworkWidget(
      {required final StacNetworkRequest request}) = _$StacNetworkWidgetImpl;

  factory _StacNetworkWidget.fromJson(Map<String, dynamic> json) =
      _$StacNetworkWidgetImpl.fromJson;

  @override
  StacNetworkRequest get request;

  /// Create a copy of StacNetworkWidget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacNetworkWidgetImplCopyWith<_$StacNetworkWidgetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
