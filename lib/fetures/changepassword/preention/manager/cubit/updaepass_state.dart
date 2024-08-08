part of 'updaepass_cubit.dart';

@immutable
sealed class UpdaepassState {}

final class UpdaepassInitial extends UpdaepassState {}

final class Updaepassload extends UpdaepassState {}

final class Updaepasssucess extends UpdaepassState {
  final UserEntity userEntitymodel;

  Updaepasssucess({required this.userEntitymodel});
}

final class Deletstate extends UpdaepassState {
  final UserEntity userEntitymodel;

  Deletstate({required this.userEntitymodel});
}
final class Updaepassfaulier extends UpdaepassState {
  final String errma;

  Updaepassfaulier({required this.errma});
}
