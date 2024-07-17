part of 'checkemail_cubit.dart';

@immutable
sealed class CheckemailState {}

final class CheckemailInitial extends CheckemailState {}


final class CheckLoading extends CheckemailState {}

final class CheckemailSuccess extends CheckemailState {
  final Checkentity Check;

  CheckemailSuccess({required this.Check});
}

final class CheckemailFailure extends CheckemailState {
  final String message;
  CheckemailFailure({required this.message});
}