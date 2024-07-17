part of 'verifycubit_cubit.dart';

@immutable
sealed class VerifycubitState {}

final class VerifycubitInitial extends VerifycubitState {}

final class VerifyInitial extends VerifycubitState {}

final class VerifyLoading extends VerifycubitState {}

final class VerifySuccess extends VerifycubitState {
  final UserEntitymodel userEntity;

  VerifySuccess({required this.userEntity});
}

final class VerifyFailure extends VerifycubitState {
  final String message;
  VerifyFailure({required this.message});
}
