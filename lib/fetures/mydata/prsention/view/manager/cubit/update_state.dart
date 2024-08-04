part of 'update_cubit.dart';

@immutable
sealed class UpdateState {}

final class UpdateInitial extends UpdateState {}

final class Updateload extends UpdateState {}

final class Updatesucess extends UpdateState {
  final UserEntity userEntitymodel;

  Updatesucess({required this.userEntitymodel});
}

final class Updatefauiler extends UpdateState {
  final String errma;

  Updatefauiler({required this.errma});
}
