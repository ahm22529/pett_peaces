part of 'fetech_product_details_cubit.dart';

@immutable
sealed class FetechProductDetailsState {}

final class FetechProductDetailsInitial extends FetechProductDetailsState {}

final class FetechProductDetailsload extends FetechProductDetailsState {}

final class FetechProductDetailssucess extends FetechProductDetailsState {
  final ProducEntity producEntity;

  FetechProductDetailssucess({required this.producEntity});
}

final class FetechProductDetailsfauler extends FetechProductDetailsState {
  final String errmas;

  FetechProductDetailsfauler({required this.errmas});
}
