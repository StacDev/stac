part of 'home_cubit.dart';

@immutable
sealed class HomeState {
  final List<Map<String, dynamic>> items;

  const HomeState({required this.items});
}

class HomeLoading extends HomeState {
  const HomeLoading({super.items = const []});
}

class HomeLoaded extends HomeState {
  const HomeLoaded({required super.items});
}
