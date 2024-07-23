part of 'contact_cubit.dart';

@immutable
sealed class ContactState {}

final class ContactInitial extends ContactState {}

final class Contactload extends ContactState {}

final class Contactsucess extends ContactState {
  final String errmas;

  Contactsucess({required this.errmas});
}

final class Contactfauiler extends ContactState {
  final String errma;

  Contactfauiler({required this.errma});
}
