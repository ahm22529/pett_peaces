part of 'all_mating_cubit.dart';

@immutable
sealed class AllMatingState {}

final class AllmatingInital extends AllMatingState {}

final class AllmatingLoad extends AllMatingState {}

final class Allmatingsucess extends AllMatingState {
  final ListAllMatingEntity matingEntity;

  Allmatingsucess({required this.matingEntity});
}

final class AllMatingfauiler extends AllMatingState {
  final String errmas;

  AllMatingfauiler({required this.errmas});
}