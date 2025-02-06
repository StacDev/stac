import 'dart:async';

import 'package:counter_example/counter/cubit/counter_cubit.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stac/stac.dart';

import 'counter_action.dart';

class CounterActionParser extends StacActionParser<CounterAction> {
  const CounterActionParser();

  @override
  String get actionType => 'counterAction';

  @override
  CounterAction getModel(Map<String, dynamic> json) =>
      CounterAction.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, CounterAction model) {
    switch (model.counterActionType) {
      case CounterActionType.increment:
        context.read<CounterCubit>().increment(model.delta);
        break;
      case CounterActionType.decrement:
        context.read<CounterCubit>().decrement(model.delta);
        break;
    }
  }
}
