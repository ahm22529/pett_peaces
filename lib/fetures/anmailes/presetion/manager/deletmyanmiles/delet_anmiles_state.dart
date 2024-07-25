part of 'delet_anmiles_cubit.dart';

@immutable
sealed class DeletAnmilesState {}

final class DeletAnmilesInitial extends DeletAnmilesState {}

final class DeletAnmilesload extends DeletAnmilesState {}

final class DeletAnmilessucess extends DeletAnmilesState {
  final String masage;

  DeletAnmilessucess({required this.masage});
}

final class DeletAnmilesfauiler extends DeletAnmilesState {
  final String errmas;

  DeletAnmilesfauiler({required this.errmas});
}
