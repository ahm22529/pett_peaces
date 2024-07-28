part of 'add_or_remove_cubit.dart';

@immutable
sealed class AddOrRemoveState {}

final class AddOrRemoveInitial extends AddOrRemoveState {}

final class AddOrRemoveload extends AddOrRemoveState {}

final class AddOrRemovesucess extends AddOrRemoveState {
  final String errmas;

  AddOrRemovesucess({required this.errmas});
}

final class AddOrRemovefauiler extends AddOrRemoveState {
  final String errmas;

  AddOrRemovefauiler({required this.errmas});
}
