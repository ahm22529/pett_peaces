part of 'fetach_my_anmiles_cubit.dart';

@immutable
sealed class FetachMyAnmilesState {}

final class FetachMyAnmilesInitial extends FetachMyAnmilesState {}

final class FetachMyAnmileslaod extends FetachMyAnmilesState {}

final class FetachMyAnmsucesss extends FetachMyAnmilesState {
  final ListAnmileEntity lis;

  FetachMyAnmsucesss({required this.lis});
}

final class FetachMyAnmilesfauiler extends FetachMyAnmilesState {
  final String errmas;

  FetachMyAnmilesfauiler({required this.errmas});
}
