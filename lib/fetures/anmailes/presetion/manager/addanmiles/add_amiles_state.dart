part of 'add_amiles_cubit.dart';

@immutable
sealed class AddAmilesState {}

final class AddAmilesInitial extends AddAmilesState {}

final class AddAmilesload extends AddAmilesState {}

final class AddAmilessucess extends AddAmilesState {
  final String mas;

  AddAmilessucess({required this.mas});
}

final class AddAmilesfauiler extends AddAmilesState {
  final String errmas;

  AddAmilesfauiler({required this.errmas});
}
