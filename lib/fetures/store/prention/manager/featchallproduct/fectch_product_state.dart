part of 'fectch_product_cubit.dart';

@immutable
sealed class FectchProductState {}

final class FectchProductInitial extends FectchProductState {}

final class FectchProductLoad extends FectchProductState {}

final class FectchProductsucess extends FectchProductState {
  final StoreEntity producEntity;

  FectchProductsucess({required this.producEntity});
}

final class FectchFiltersucess extends FectchProductState {
  final StoreEntity producEntity;

  FectchFiltersucess({required this.producEntity});
}


final class FectchProductfailuer extends FectchProductState {
  final String errmass;

  FectchProductfailuer({required this.errmass});
}


