// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_scaffold.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacScaffold {
  Map<String, dynamic>? get appBar;
  Map<String, dynamic>? get body;
  Map<String, dynamic>? get floatingActionButton;
  StacFloatingActionButtonLocation? get floatingActionButtonLocation;
  List<Map<String, dynamic>>? get persistentFooterButtons;
  Map<String, dynamic>? get drawer;
  Map<String, dynamic>? get endDrawer;
  Map<String, dynamic>? get bottomNavigationBar;
  Map<String, dynamic>? get bottomSheet;
  String? get backgroundColor;
  bool? get resizeToAvoidBottomInset;
  bool get primary;
  DragStartBehavior get drawerDragStartBehavior;
  bool get extendBody;
  bool get extendBodyBehindAppBar;
  String? get drawerScrimColor;
  double? get drawerEdgeDragWidth;
  bool get drawerEnableOpenDragGesture;
  bool get endDrawerEnableOpenDragGesture;
  String? get restorationId;

  /// Create a copy of StacScaffold
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacScaffoldCopyWith<StacScaffold> get copyWith =>
      _$StacScaffoldCopyWithImpl<StacScaffold>(
          this as StacScaffold, _$identity);

  /// Serializes this StacScaffold to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacScaffold &&
            const DeepCollectionEquality().equals(other.appBar, appBar) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality()
                .equals(other.floatingActionButton, floatingActionButton) &&
            (identical(other.floatingActionButtonLocation,
                    floatingActionButtonLocation) ||
                other.floatingActionButtonLocation ==
                    floatingActionButtonLocation) &&
            const DeepCollectionEquality().equals(
                other.persistentFooterButtons, persistentFooterButtons) &&
            const DeepCollectionEquality().equals(other.drawer, drawer) &&
            const DeepCollectionEquality().equals(other.endDrawer, endDrawer) &&
            const DeepCollectionEquality()
                .equals(other.bottomNavigationBar, bottomNavigationBar) &&
            const DeepCollectionEquality()
                .equals(other.bottomSheet, bottomSheet) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(
                    other.resizeToAvoidBottomInset, resizeToAvoidBottomInset) ||
                other.resizeToAvoidBottomInset == resizeToAvoidBottomInset) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.drawerDragStartBehavior, drawerDragStartBehavior) ||
                other.drawerDragStartBehavior == drawerDragStartBehavior) &&
            (identical(other.extendBody, extendBody) ||
                other.extendBody == extendBody) &&
            (identical(other.extendBodyBehindAppBar, extendBodyBehindAppBar) ||
                other.extendBodyBehindAppBar == extendBodyBehindAppBar) &&
            (identical(other.drawerScrimColor, drawerScrimColor) ||
                other.drawerScrimColor == drawerScrimColor) &&
            (identical(other.drawerEdgeDragWidth, drawerEdgeDragWidth) ||
                other.drawerEdgeDragWidth == drawerEdgeDragWidth) &&
            (identical(other.drawerEnableOpenDragGesture, drawerEnableOpenDragGesture) ||
                other.drawerEnableOpenDragGesture ==
                    drawerEnableOpenDragGesture) &&
            (identical(other.endDrawerEnableOpenDragGesture,
                    endDrawerEnableOpenDragGesture) ||
                other.endDrawerEnableOpenDragGesture ==
                    endDrawerEnableOpenDragGesture) &&
            (identical(other.restorationId, restorationId) ||
                other.restorationId == restorationId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(appBar),
        const DeepCollectionEquality().hash(body),
        const DeepCollectionEquality().hash(floatingActionButton),
        floatingActionButtonLocation,
        const DeepCollectionEquality().hash(persistentFooterButtons),
        const DeepCollectionEquality().hash(drawer),
        const DeepCollectionEquality().hash(endDrawer),
        const DeepCollectionEquality().hash(bottomNavigationBar),
        const DeepCollectionEquality().hash(bottomSheet),
        backgroundColor,
        resizeToAvoidBottomInset,
        primary,
        drawerDragStartBehavior,
        extendBody,
        extendBodyBehindAppBar,
        drawerScrimColor,
        drawerEdgeDragWidth,
        drawerEnableOpenDragGesture,
        endDrawerEnableOpenDragGesture,
        restorationId
      ]);

  @override
  String toString() {
    return 'StacScaffold(appBar: $appBar, body: $body, floatingActionButton: $floatingActionButton, floatingActionButtonLocation: $floatingActionButtonLocation, persistentFooterButtons: $persistentFooterButtons, drawer: $drawer, endDrawer: $endDrawer, bottomNavigationBar: $bottomNavigationBar, bottomSheet: $bottomSheet, backgroundColor: $backgroundColor, resizeToAvoidBottomInset: $resizeToAvoidBottomInset, primary: $primary, drawerDragStartBehavior: $drawerDragStartBehavior, extendBody: $extendBody, extendBodyBehindAppBar: $extendBodyBehindAppBar, drawerScrimColor: $drawerScrimColor, drawerEdgeDragWidth: $drawerEdgeDragWidth, drawerEnableOpenDragGesture: $drawerEnableOpenDragGesture, endDrawerEnableOpenDragGesture: $endDrawerEnableOpenDragGesture, restorationId: $restorationId)';
  }
}

/// @nodoc
abstract mixin class $StacScaffoldCopyWith<$Res> {
  factory $StacScaffoldCopyWith(
          StacScaffold value, $Res Function(StacScaffold) _then) =
      _$StacScaffoldCopyWithImpl;
  @useResult
  $Res call(
      {Map<String, dynamic>? appBar,
      Map<String, dynamic>? body,
      Map<String, dynamic>? floatingActionButton,
      StacFloatingActionButtonLocation? floatingActionButtonLocation,
      List<Map<String, dynamic>>? persistentFooterButtons,
      Map<String, dynamic>? drawer,
      Map<String, dynamic>? endDrawer,
      Map<String, dynamic>? bottomNavigationBar,
      Map<String, dynamic>? bottomSheet,
      String? backgroundColor,
      bool? resizeToAvoidBottomInset,
      bool primary,
      DragStartBehavior drawerDragStartBehavior,
      bool extendBody,
      bool extendBodyBehindAppBar,
      String? drawerScrimColor,
      double? drawerEdgeDragWidth,
      bool drawerEnableOpenDragGesture,
      bool endDrawerEnableOpenDragGesture,
      String? restorationId});
}

/// @nodoc
class _$StacScaffoldCopyWithImpl<$Res> implements $StacScaffoldCopyWith<$Res> {
  _$StacScaffoldCopyWithImpl(this._self, this._then);

  final StacScaffold _self;
  final $Res Function(StacScaffold) _then;

  /// Create a copy of StacScaffold
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appBar = freezed,
    Object? body = freezed,
    Object? floatingActionButton = freezed,
    Object? floatingActionButtonLocation = freezed,
    Object? persistentFooterButtons = freezed,
    Object? drawer = freezed,
    Object? endDrawer = freezed,
    Object? bottomNavigationBar = freezed,
    Object? bottomSheet = freezed,
    Object? backgroundColor = freezed,
    Object? resizeToAvoidBottomInset = freezed,
    Object? primary = null,
    Object? drawerDragStartBehavior = null,
    Object? extendBody = null,
    Object? extendBodyBehindAppBar = null,
    Object? drawerScrimColor = freezed,
    Object? drawerEdgeDragWidth = freezed,
    Object? drawerEnableOpenDragGesture = null,
    Object? endDrawerEnableOpenDragGesture = null,
    Object? restorationId = freezed,
  }) {
    return _then(_self.copyWith(
      appBar: freezed == appBar
          ? _self.appBar
          : appBar // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      floatingActionButton: freezed == floatingActionButton
          ? _self.floatingActionButton
          : floatingActionButton // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      floatingActionButtonLocation: freezed == floatingActionButtonLocation
          ? _self.floatingActionButtonLocation
          : floatingActionButtonLocation // ignore: cast_nullable_to_non_nullable
              as StacFloatingActionButtonLocation?,
      persistentFooterButtons: freezed == persistentFooterButtons
          ? _self.persistentFooterButtons
          : persistentFooterButtons // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      drawer: freezed == drawer
          ? _self.drawer
          : drawer // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      endDrawer: freezed == endDrawer
          ? _self.endDrawer
          : endDrawer // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      bottomNavigationBar: freezed == bottomNavigationBar
          ? _self.bottomNavigationBar
          : bottomNavigationBar // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      bottomSheet: freezed == bottomSheet
          ? _self.bottomSheet
          : bottomSheet // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      resizeToAvoidBottomInset: freezed == resizeToAvoidBottomInset
          ? _self.resizeToAvoidBottomInset
          : resizeToAvoidBottomInset // ignore: cast_nullable_to_non_nullable
              as bool?,
      primary: null == primary
          ? _self.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool,
      drawerDragStartBehavior: null == drawerDragStartBehavior
          ? _self.drawerDragStartBehavior
          : drawerDragStartBehavior // ignore: cast_nullable_to_non_nullable
              as DragStartBehavior,
      extendBody: null == extendBody
          ? _self.extendBody
          : extendBody // ignore: cast_nullable_to_non_nullable
              as bool,
      extendBodyBehindAppBar: null == extendBodyBehindAppBar
          ? _self.extendBodyBehindAppBar
          : extendBodyBehindAppBar // ignore: cast_nullable_to_non_nullable
              as bool,
      drawerScrimColor: freezed == drawerScrimColor
          ? _self.drawerScrimColor
          : drawerScrimColor // ignore: cast_nullable_to_non_nullable
              as String?,
      drawerEdgeDragWidth: freezed == drawerEdgeDragWidth
          ? _self.drawerEdgeDragWidth
          : drawerEdgeDragWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      drawerEnableOpenDragGesture: null == drawerEnableOpenDragGesture
          ? _self.drawerEnableOpenDragGesture
          : drawerEnableOpenDragGesture // ignore: cast_nullable_to_non_nullable
              as bool,
      endDrawerEnableOpenDragGesture: null == endDrawerEnableOpenDragGesture
          ? _self.endDrawerEnableOpenDragGesture
          : endDrawerEnableOpenDragGesture // ignore: cast_nullable_to_non_nullable
              as bool,
      restorationId: freezed == restorationId
          ? _self.restorationId
          : restorationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacScaffold implements StacScaffold {
  const _StacScaffold(
      {final Map<String, dynamic>? appBar,
      final Map<String, dynamic>? body,
      final Map<String, dynamic>? floatingActionButton,
      this.floatingActionButtonLocation,
      final List<Map<String, dynamic>>? persistentFooterButtons,
      final Map<String, dynamic>? drawer,
      final Map<String, dynamic>? endDrawer,
      final Map<String, dynamic>? bottomNavigationBar,
      final Map<String, dynamic>? bottomSheet,
      this.backgroundColor,
      this.resizeToAvoidBottomInset,
      this.primary = true,
      this.drawerDragStartBehavior = DragStartBehavior.start,
      this.extendBody = false,
      this.extendBodyBehindAppBar = false,
      this.drawerScrimColor,
      this.drawerEdgeDragWidth,
      this.drawerEnableOpenDragGesture = true,
      this.endDrawerEnableOpenDragGesture = true,
      this.restorationId})
      : _appBar = appBar,
        _body = body,
        _floatingActionButton = floatingActionButton,
        _persistentFooterButtons = persistentFooterButtons,
        _drawer = drawer,
        _endDrawer = endDrawer,
        _bottomNavigationBar = bottomNavigationBar,
        _bottomSheet = bottomSheet;
  factory _StacScaffold.fromJson(Map<String, dynamic> json) =>
      _$StacScaffoldFromJson(json);

  final Map<String, dynamic>? _appBar;
  @override
  Map<String, dynamic>? get appBar {
    final value = _appBar;
    if (value == null) return null;
    if (_appBar is EqualUnmodifiableMapView) return _appBar;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _body;
  @override
  Map<String, dynamic>? get body {
    final value = _body;
    if (value == null) return null;
    if (_body is EqualUnmodifiableMapView) return _body;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _floatingActionButton;
  @override
  Map<String, dynamic>? get floatingActionButton {
    final value = _floatingActionButton;
    if (value == null) return null;
    if (_floatingActionButton is EqualUnmodifiableMapView)
      return _floatingActionButton;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final StacFloatingActionButtonLocation? floatingActionButtonLocation;
  final List<Map<String, dynamic>>? _persistentFooterButtons;
  @override
  List<Map<String, dynamic>>? get persistentFooterButtons {
    final value = _persistentFooterButtons;
    if (value == null) return null;
    if (_persistentFooterButtons is EqualUnmodifiableListView)
      return _persistentFooterButtons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _drawer;
  @override
  Map<String, dynamic>? get drawer {
    final value = _drawer;
    if (value == null) return null;
    if (_drawer is EqualUnmodifiableMapView) return _drawer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _endDrawer;
  @override
  Map<String, dynamic>? get endDrawer {
    final value = _endDrawer;
    if (value == null) return null;
    if (_endDrawer is EqualUnmodifiableMapView) return _endDrawer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _bottomNavigationBar;
  @override
  Map<String, dynamic>? get bottomNavigationBar {
    final value = _bottomNavigationBar;
    if (value == null) return null;
    if (_bottomNavigationBar is EqualUnmodifiableMapView)
      return _bottomNavigationBar;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _bottomSheet;
  @override
  Map<String, dynamic>? get bottomSheet {
    final value = _bottomSheet;
    if (value == null) return null;
    if (_bottomSheet is EqualUnmodifiableMapView) return _bottomSheet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? backgroundColor;
  @override
  final bool? resizeToAvoidBottomInset;
  @override
  @JsonKey()
  final bool primary;
  @override
  @JsonKey()
  final DragStartBehavior drawerDragStartBehavior;
  @override
  @JsonKey()
  final bool extendBody;
  @override
  @JsonKey()
  final bool extendBodyBehindAppBar;
  @override
  final String? drawerScrimColor;
  @override
  final double? drawerEdgeDragWidth;
  @override
  @JsonKey()
  final bool drawerEnableOpenDragGesture;
  @override
  @JsonKey()
  final bool endDrawerEnableOpenDragGesture;
  @override
  final String? restorationId;

  /// Create a copy of StacScaffold
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacScaffoldCopyWith<_StacScaffold> get copyWith =>
      __$StacScaffoldCopyWithImpl<_StacScaffold>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacScaffoldToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacScaffold &&
            const DeepCollectionEquality().equals(other._appBar, _appBar) &&
            const DeepCollectionEquality().equals(other._body, _body) &&
            const DeepCollectionEquality()
                .equals(other._floatingActionButton, _floatingActionButton) &&
            (identical(other.floatingActionButtonLocation,
                    floatingActionButtonLocation) ||
                other.floatingActionButtonLocation ==
                    floatingActionButtonLocation) &&
            const DeepCollectionEquality().equals(
                other._persistentFooterButtons, _persistentFooterButtons) &&
            const DeepCollectionEquality().equals(other._drawer, _drawer) &&
            const DeepCollectionEquality()
                .equals(other._endDrawer, _endDrawer) &&
            const DeepCollectionEquality()
                .equals(other._bottomNavigationBar, _bottomNavigationBar) &&
            const DeepCollectionEquality()
                .equals(other._bottomSheet, _bottomSheet) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.resizeToAvoidBottomInset, resizeToAvoidBottomInset) ||
                other.resizeToAvoidBottomInset == resizeToAvoidBottomInset) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.drawerDragStartBehavior, drawerDragStartBehavior) ||
                other.drawerDragStartBehavior == drawerDragStartBehavior) &&
            (identical(other.extendBody, extendBody) ||
                other.extendBody == extendBody) &&
            (identical(other.extendBodyBehindAppBar, extendBodyBehindAppBar) ||
                other.extendBodyBehindAppBar == extendBodyBehindAppBar) &&
            (identical(other.drawerScrimColor, drawerScrimColor) ||
                other.drawerScrimColor == drawerScrimColor) &&
            (identical(other.drawerEdgeDragWidth, drawerEdgeDragWidth) ||
                other.drawerEdgeDragWidth == drawerEdgeDragWidth) &&
            (identical(other.drawerEnableOpenDragGesture, drawerEnableOpenDragGesture) ||
                other.drawerEnableOpenDragGesture ==
                    drawerEnableOpenDragGesture) &&
            (identical(other.endDrawerEnableOpenDragGesture,
                    endDrawerEnableOpenDragGesture) ||
                other.endDrawerEnableOpenDragGesture ==
                    endDrawerEnableOpenDragGesture) &&
            (identical(other.restorationId, restorationId) ||
                other.restorationId == restorationId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_appBar),
        const DeepCollectionEquality().hash(_body),
        const DeepCollectionEquality().hash(_floatingActionButton),
        floatingActionButtonLocation,
        const DeepCollectionEquality().hash(_persistentFooterButtons),
        const DeepCollectionEquality().hash(_drawer),
        const DeepCollectionEquality().hash(_endDrawer),
        const DeepCollectionEquality().hash(_bottomNavigationBar),
        const DeepCollectionEquality().hash(_bottomSheet),
        backgroundColor,
        resizeToAvoidBottomInset,
        primary,
        drawerDragStartBehavior,
        extendBody,
        extendBodyBehindAppBar,
        drawerScrimColor,
        drawerEdgeDragWidth,
        drawerEnableOpenDragGesture,
        endDrawerEnableOpenDragGesture,
        restorationId
      ]);

  @override
  String toString() {
    return 'StacScaffold(appBar: $appBar, body: $body, floatingActionButton: $floatingActionButton, floatingActionButtonLocation: $floatingActionButtonLocation, persistentFooterButtons: $persistentFooterButtons, drawer: $drawer, endDrawer: $endDrawer, bottomNavigationBar: $bottomNavigationBar, bottomSheet: $bottomSheet, backgroundColor: $backgroundColor, resizeToAvoidBottomInset: $resizeToAvoidBottomInset, primary: $primary, drawerDragStartBehavior: $drawerDragStartBehavior, extendBody: $extendBody, extendBodyBehindAppBar: $extendBodyBehindAppBar, drawerScrimColor: $drawerScrimColor, drawerEdgeDragWidth: $drawerEdgeDragWidth, drawerEnableOpenDragGesture: $drawerEnableOpenDragGesture, endDrawerEnableOpenDragGesture: $endDrawerEnableOpenDragGesture, restorationId: $restorationId)';
  }
}

/// @nodoc
abstract mixin class _$StacScaffoldCopyWith<$Res>
    implements $StacScaffoldCopyWith<$Res> {
  factory _$StacScaffoldCopyWith(
          _StacScaffold value, $Res Function(_StacScaffold) _then) =
      __$StacScaffoldCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? appBar,
      Map<String, dynamic>? body,
      Map<String, dynamic>? floatingActionButton,
      StacFloatingActionButtonLocation? floatingActionButtonLocation,
      List<Map<String, dynamic>>? persistentFooterButtons,
      Map<String, dynamic>? drawer,
      Map<String, dynamic>? endDrawer,
      Map<String, dynamic>? bottomNavigationBar,
      Map<String, dynamic>? bottomSheet,
      String? backgroundColor,
      bool? resizeToAvoidBottomInset,
      bool primary,
      DragStartBehavior drawerDragStartBehavior,
      bool extendBody,
      bool extendBodyBehindAppBar,
      String? drawerScrimColor,
      double? drawerEdgeDragWidth,
      bool drawerEnableOpenDragGesture,
      bool endDrawerEnableOpenDragGesture,
      String? restorationId});
}

/// @nodoc
class __$StacScaffoldCopyWithImpl<$Res>
    implements _$StacScaffoldCopyWith<$Res> {
  __$StacScaffoldCopyWithImpl(this._self, this._then);

  final _StacScaffold _self;
  final $Res Function(_StacScaffold) _then;

  /// Create a copy of StacScaffold
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? appBar = freezed,
    Object? body = freezed,
    Object? floatingActionButton = freezed,
    Object? floatingActionButtonLocation = freezed,
    Object? persistentFooterButtons = freezed,
    Object? drawer = freezed,
    Object? endDrawer = freezed,
    Object? bottomNavigationBar = freezed,
    Object? bottomSheet = freezed,
    Object? backgroundColor = freezed,
    Object? resizeToAvoidBottomInset = freezed,
    Object? primary = null,
    Object? drawerDragStartBehavior = null,
    Object? extendBody = null,
    Object? extendBodyBehindAppBar = null,
    Object? drawerScrimColor = freezed,
    Object? drawerEdgeDragWidth = freezed,
    Object? drawerEnableOpenDragGesture = null,
    Object? endDrawerEnableOpenDragGesture = null,
    Object? restorationId = freezed,
  }) {
    return _then(_StacScaffold(
      appBar: freezed == appBar
          ? _self._appBar
          : appBar // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      body: freezed == body
          ? _self._body
          : body // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      floatingActionButton: freezed == floatingActionButton
          ? _self._floatingActionButton
          : floatingActionButton // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      floatingActionButtonLocation: freezed == floatingActionButtonLocation
          ? _self.floatingActionButtonLocation
          : floatingActionButtonLocation // ignore: cast_nullable_to_non_nullable
              as StacFloatingActionButtonLocation?,
      persistentFooterButtons: freezed == persistentFooterButtons
          ? _self._persistentFooterButtons
          : persistentFooterButtons // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      drawer: freezed == drawer
          ? _self._drawer
          : drawer // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      endDrawer: freezed == endDrawer
          ? _self._endDrawer
          : endDrawer // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      bottomNavigationBar: freezed == bottomNavigationBar
          ? _self._bottomNavigationBar
          : bottomNavigationBar // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      bottomSheet: freezed == bottomSheet
          ? _self._bottomSheet
          : bottomSheet // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      backgroundColor: freezed == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      resizeToAvoidBottomInset: freezed == resizeToAvoidBottomInset
          ? _self.resizeToAvoidBottomInset
          : resizeToAvoidBottomInset // ignore: cast_nullable_to_non_nullable
              as bool?,
      primary: null == primary
          ? _self.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool,
      drawerDragStartBehavior: null == drawerDragStartBehavior
          ? _self.drawerDragStartBehavior
          : drawerDragStartBehavior // ignore: cast_nullable_to_non_nullable
              as DragStartBehavior,
      extendBody: null == extendBody
          ? _self.extendBody
          : extendBody // ignore: cast_nullable_to_non_nullable
              as bool,
      extendBodyBehindAppBar: null == extendBodyBehindAppBar
          ? _self.extendBodyBehindAppBar
          : extendBodyBehindAppBar // ignore: cast_nullable_to_non_nullable
              as bool,
      drawerScrimColor: freezed == drawerScrimColor
          ? _self.drawerScrimColor
          : drawerScrimColor // ignore: cast_nullable_to_non_nullable
              as String?,
      drawerEdgeDragWidth: freezed == drawerEdgeDragWidth
          ? _self.drawerEdgeDragWidth
          : drawerEdgeDragWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      drawerEnableOpenDragGesture: null == drawerEnableOpenDragGesture
          ? _self.drawerEnableOpenDragGesture
          : drawerEnableOpenDragGesture // ignore: cast_nullable_to_non_nullable
              as bool,
      endDrawerEnableOpenDragGesture: null == endDrawerEnableOpenDragGesture
          ? _self.endDrawerEnableOpenDragGesture
          : endDrawerEnableOpenDragGesture // ignore: cast_nullable_to_non_nullable
              as bool,
      restorationId: freezed == restorationId
          ? _self.restorationId
          : restorationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
