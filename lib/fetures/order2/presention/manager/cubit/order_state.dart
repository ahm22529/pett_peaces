part of 'order_cubit.dart';

@immutable
sealed class OrderState {}

final class OrderInitial extends OrderState {}

final class Orderload extends OrderState {}

final class Ordersucess extends OrderState {
  final ListOrderEntity listOrderEntity;

  Ordersucess({required this.listOrderEntity});
}

final class Orderfuiler extends OrderState {
  final String errmas;

  Orderfuiler({required this.errmas});
}
