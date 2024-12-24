// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_network_widget.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiNetworkWidget _$MiraiNetworkWidgetFromJson(Map<String, dynamic> json) {
  return _MiraiNetworkWidget.fromJson(json);
}

/// @nodoc
mixin _$MiraiNetworkWidget {
  MiraiNetworkRequest get request => throw _privateConstructorUsedError;

  /// Serializes this MiraiNetworkWidget to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiNetworkWidget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiNetworkWidgetCopyWith<MiraiNetworkWidget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiNetworkWidgetCopyWith<$Res> {
  factory $MiraiNetworkWidgetCopyWith(
          MiraiNetworkWidget value, $Res Function(MiraiNetworkWidget) then) =
      _$MiraiNetworkWidgetCopyWithImpl<$Res, MiraiNetworkWidget>;
  @useResult
  $Res call({MiraiNetworkRequest request});

  $MiraiNetworkRequestCopyWith<$Res> get request;
}

/// @nodoc
class _$MiraiNetworkWidgetCopyWithImpl<$Res, $Val extends MiraiNetworkWidget>
    implements $MiraiNetworkWidgetCopyWith<$Res> {
  _$MiraiNetworkWidgetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiNetworkWidget
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
              as MiraiNetworkRequest,
    ) as $Val);
  }

  /// Create a copy of MiraiNetworkWidget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MiraiNetworkRequestCopyWith<$Res> get request {
    return $MiraiNetworkRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiraiNetworkWidgetImplCopyWith<$Res>
    implements $MiraiNetworkWidgetCopyWith<$Res> {
  factory _$$MiraiNetworkWidgetImplCopyWith(_$MiraiNetworkWidgetImpl value,
          $Res Function(_$MiraiNetworkWidgetImpl) then) =
      __$$MiraiNetworkWidgetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MiraiNetworkRequest request});

  @override
  $MiraiNetworkRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$MiraiNetworkWidgetImplCopyWithImpl<$Res>
    extends _$MiraiNetworkWidgetCopyWithImpl<$Res, _$MiraiNetworkWidgetImpl>
    implements _$$MiraiNetworkWidgetImplCopyWith<$Res> {
  __$$MiraiNetworkWidgetImplCopyWithImpl(_$MiraiNetworkWidgetImpl _value,
      $Res Function(_$MiraiNetworkWidgetImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiNetworkWidget
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$MiraiNetworkWidgetImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as MiraiNetworkRequest,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiNetworkWidgetImpl implements _MiraiNetworkWidget {
  const _$MiraiNetworkWidgetImpl({required this.request});

  factory _$MiraiNetworkWidgetImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiNetworkWidgetImplFromJson(json);

  @override
  final MiraiNetworkRequest request;

  @override
  String toString() {
    return 'MiraiNetworkWidget(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiNetworkWidgetImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of MiraiNetworkWidget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiNetworkWidgetImplCopyWith<_$MiraiNetworkWidgetImpl> get copyWith =>
      __$$MiraiNetworkWidgetImplCopyWithImpl<_$MiraiNetworkWidgetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiNetworkWidgetImplToJson(
      this,
    );
  }
}

abstract class _MiraiNetworkWidget implements MiraiNetworkWidget {
  const factory _MiraiNetworkWidget(
      {required final MiraiNetworkRequest request}) = _$MiraiNetworkWidgetImpl;

  factory _MiraiNetworkWidget.fromJson(Map<String, dynamic> json) =
      _$MiraiNetworkWidgetImpl.fromJson;

  @override
  MiraiNetworkRequest get request;

  /// Create a copy of MiraiNetworkWidget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiNetworkWidgetImplCopyWith<_$MiraiNetworkWidgetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
