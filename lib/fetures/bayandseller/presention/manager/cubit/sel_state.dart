part of 'sel_cubit.dart';

@immutable
sealed class SelState {}

final class SelInitial extends SelState {}

final class Selload extends SelState {}

final class Selsucess extends SelState {
  final ListSelEnity listSelEnity;

  Selsucess({required this.listSelEnity});
}

final class Selsucessserch extends SelState {
  final ListSelEnity listSelEnity;

  Selsucessserch({required this.listSelEnity});
}

final class Selfauiler extends SelState {
  final String errmass;

  Selfauiler({required this.errmass});
}
