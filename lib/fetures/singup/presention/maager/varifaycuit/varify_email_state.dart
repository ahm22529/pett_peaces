part of 'varify_email_cubit.dart';

@immutable
sealed class VarifyEmailState {}

final class VarifyEmailInitial extends VarifyEmailState {}

final class VarifyEmailLoading extends VarifyEmailState {}

final class VarifyEmailSuccess extends VarifyEmailState {
  final UserEntity userEntity;

  VarifyEmailSuccess({required this.userEntity});
}

final class VarifyEmailFailure extends VarifyEmailState {
  final String message;
  VarifyEmailFailure({required this.message});
}
