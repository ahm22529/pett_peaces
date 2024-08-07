part of 'is_log_in_cubit.dart';

@immutable
sealed class IsLogInState {}

final class IsLogInInitial extends IsLogInState {}

final class IsLoging extends IsLogInState {}

final class unLoging extends IsLogInState {}
