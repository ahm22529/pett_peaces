part of 'updatepassword_cubit.dart';

@immutable
sealed class UpdatepasswordState {}

final class UpdatepasswordInitial extends UpdatepasswordState {}

final class UpdatepasswordLoading extends UpdatepasswordState {}

final class UpdatepasswordSuccess extends UpdatepasswordState {
  final UserEntitymodel userEntity;

  UpdatepasswordSuccess({required this.userEntity});
}

final class UpdatepasswordFailure extends UpdatepasswordState {
  final String message;
  UpdatepasswordFailure({required this.message});
}
