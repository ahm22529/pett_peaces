part of 'massage_cubit.dart';

@immutable
sealed class MassageState {}

final class MassageInitial extends MassageState {}

final class MassageLoad extends MassageState {}

final class MassageSucess extends MassageState {
  final AllChat allChat;

  MassageSucess({required this.allChat});
}

final class MassageSucessSearch extends MassageState {
  final AllChat allChat;

  MassageSucessSearch({required this.allChat});
}

final class MassageFauiler extends MassageState {
  final String errormassage;

  MassageFauiler({required this.errormassage});
}
