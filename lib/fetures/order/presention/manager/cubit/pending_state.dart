part of 'pending_cubit.dart';

@immutable
sealed class PendingState {}

final class PendingInitial extends PendingState {}

final class Pendingload extends PendingState {}

final class Pendingsucess extends PendingState {
  final LlistBookingEntity llistBookingEntity;

  Pendingsucess({required this.llistBookingEntity});
}

final class Pendingfauiler extends PendingState {
  final String errmas;

  Pendingfauiler({required this.errmas});
}
