import 'package:counter_example/counter/actions/counter_action_parser.dart';
import 'package:counter_example/counter/widgets/counter_screen_parser.dart';
import 'package:flutter/material.dart';
import 'package:stac/stac.dart';

void main() async {
  await Stac.initialize(
    parsers: [
      CounterScreenParser(),
    ],
    actionParsers: [
      CounterActionParser(),
    ],
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stac Counter Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Stac.fromJson(json, context) ?? SizedBox(),
    );
  }
}

const Map<String, dynamic> json = {
  "type": "counterScreen",
  "title": "Stac Counter Example",
  "description": "You have pushed the button this many times:",
  "onIncrement": {
    "actionType": "counterAction",
    "counterActionType": "increment",
    "delta": 1,
  },
  "onDecrement": {
    "actionType": "counterAction",
    "counterActionType": "decrement",
    "delta": 2,
  }
};
