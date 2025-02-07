import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(int? initialCount) : super(initialCount ?? 0);

  void increment(int value) => emit(state + value);
  void decrement(int value) => emit(state - value);
}
