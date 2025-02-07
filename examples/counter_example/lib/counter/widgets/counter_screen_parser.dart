import 'package:counter_example/counter/cubit/counter_cubit.dart';
import 'package:counter_example/counter/widgets/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stac/stac.dart';

class CounterScreenParser extends StacParser<CounterScreen> {
  const CounterScreenParser();

  @override
  String get type => 'counterScreen';

  @override
  CounterScreen getModel(Map<String, dynamic> json) =>
      CounterScreen.fromJson(json);

  @override
  Widget parse(BuildContext context, CounterScreen model) {
    return BlocProvider(
      create: (_) => CounterCubit(model.initialCount),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(model.title),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(model.description),
                  BlocBuilder<CounterCubit, int>(
                    builder: (context, count) => Text(
                      '$count',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                FloatingActionButton(
                  onPressed: () =>
                      Stac.onCallFromJson(model.onDecrement, context),
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
                SizedBox(width: 12),
                FloatingActionButton(
                  onPressed: () =>
                      Stac.onCallFromJson(model.onIncrement, context),
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
