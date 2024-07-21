part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoad extends HomeState {}

final class HomeSucess extends HomeState {
  final HomeEntity homeEntity;

  HomeSucess({required this.homeEntity});
}

final class Homefailuer extends HomeState {
  final String errmas;

  Homefailuer({required this.errmas});
}
