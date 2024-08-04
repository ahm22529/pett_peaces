part of 'getnotifaction_cubit.dart';

@immutable
sealed class GetnotifactionState {}

final class GetnotifactionInitial extends GetnotifactionState {}

final class GetnotifactionLoad extends GetnotifactionState {}

final class GetnotifactionSucess extends GetnotifactionState {
  final Allnotifaction allnotifaction;

  GetnotifactionSucess({required this.allnotifaction});
}

final class Getnotifactionfauiler extends GetnotifactionState {
  final String errmasg;

  Getnotifactionfauiler({required this.errmasg});
}
