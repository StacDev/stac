import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_screen.freezed.dart';
part 'example_screen.g.dart';

@freezed
class ExampleScreen with _$ExampleScreen {
  const factory ExampleScreen({
    required String assetPath,
  }) = _ExampleScreen;

  factory ExampleScreen.fromJson(Map<String, dynamic> json) =>
      _$ExampleScreenFromJson(json);
}
