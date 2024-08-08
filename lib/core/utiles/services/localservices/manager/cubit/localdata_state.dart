part of 'localdata_cubit.dart';

@immutable
sealed class LocaldataState {}

final class LocaldataInitial extends LocaldataState {}

final class LocaldataLoad extends LocaldataState {}

final class LocaldataFauiler extends LocaldataState {}

final class Localdatasucessget extends LocaldataState {
  final UserEntity userEntity;

  Localdatasucessget({required this.userEntity});
}

final class Localdatasucessgetdepart extends LocaldataState {
  final SubdepartEntity subdepartEntity;

  Localdatasucessgetdepart({required this.subdepartEntity});
}

final class Localdatasucessadd extends LocaldataState {}
