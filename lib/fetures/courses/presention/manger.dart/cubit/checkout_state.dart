part of 'checkout_cubit.dart';

@immutable
sealed class CheckoutState {}

final class CheckoutInitial extends CheckoutState {}

final class Checkoutload extends CheckoutState {}

final class Checkoutsucess extends CheckoutState {
  final Checkentity checkentity;

  Checkoutsucess({required this.checkentity});
}

final class Checkoutfauler extends CheckoutState {
  final String errmas;

  Checkoutfauler({required this.errmas});
}
