part of 'send_cubit.dart';

@immutable
sealed class SendState {}

final class SendInitial extends SendState {}

final class SendLoad extends SendState {}

final class Sendsucess extends SendState {}

final class SendFauiler extends SendState {
  final String errmass;

  SendFauiler({required this.errmass});
}
