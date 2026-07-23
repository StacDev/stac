import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeBloc extends Cubit<HomeState> {
  HomeBloc() : super(const HomeLoading()) {
    controller = TextEditingController()
      ..addListener(_textEditingControllerListener);
    _initialize();
  }

  late final TextEditingController controller;

  final List<Map<String, dynamic>> _allItems = [];

  void _initialize() async {
    final items = await _loadAndParseJsonFromAsset();
    if (items.isNotEmpty) {
      _allItems.addAll(items);
    }
    emit(HomeLoaded(items: items));
  }

  void _onUserInput({required String keyword}) {
    if (keyword.isNotEmpty) {
      List<Map<String, dynamic>> matchedItems = [];

      keyword = keyword.toLowerCase();
      for (final Map<String, dynamic> item in _allItems) {
        var text = item["title"]?["data"];
        if (text != null && text is String) {
          if (text.toLowerCase().contains(keyword)) {
            matchedItems.add(item);
          }
        }
      }
      emit(HomeLoaded(items: matchedItems));
    } else {
      emit(HomeLoaded(items: _allItems));
    }
  }

  Future<List<Map<String, dynamic>>> _loadAndParseJsonFromAsset() async {
    try {
      final String json =
          await rootBundle.loadString("assets/json/home_screen.json");
      final List<dynamic> decodedJson = jsonDecode(json);
      final List<Map<String, dynamic>> castedJson =
          decodedJson.cast<Map<String, dynamic>>();
      return castedJson;
    } catch (_) {
      return const [];
    }
  }

  // Listen to text editing controller for the latest keyword
  void _textEditingControllerListener() {
    _onUserInput(keyword: controller.text);
  }

  @override
  Future<void> close() {
    controller
      ..removeListener(_textEditingControllerListener)
      ..dispose();
    return super.close();
  }
}
