part of 'getbox_cubit.dart';

@immutable
sealed class GetboxState {}

final class GetboxInitial extends GetboxState {}

final class Getboxload extends GetboxState {}

final class Getboxsucess extends GetboxState {
  final BoxEntity boxEntity;

  Getboxsucess({required this.boxEntity});
}

final class Getboxfauiler extends GetboxState {
  final String errmas;

  Getboxfauiler({required this.errmas});
}
