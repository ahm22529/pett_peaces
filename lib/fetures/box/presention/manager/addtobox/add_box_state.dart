part of 'add_box_cubit.dart';

@immutable
sealed class AddBoxState {}

final class AddBoxInitial extends AddBoxState {}

final class AddBoxload extends AddBoxState {}

final class AddBoxsucess extends AddBoxState {
  final BoxEntity boxEntity;

  AddBoxsucess({required this.boxEntity});
}

final class AddBoxfailer extends AddBoxState {
  final String errmas;

  AddBoxfailer({required this.errmas});
}
