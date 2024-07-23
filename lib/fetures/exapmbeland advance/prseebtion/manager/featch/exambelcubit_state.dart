part of 'exambelcubit_cubit.dart';

@immutable
sealed class ExambelcubitState {}

final class ExambelcubitInitial extends ExambelcubitState {}

final class Exambelcubitload extends ExambelcubitState {}

final class Exambelcubitsucess extends ExambelcubitState {
  final ExamelEntity ex;

  Exambelcubitsucess({required this.ex});
}

final class Exambelcubitfauleer extends ExambelcubitState {
  final String errmas;

  Exambelcubitfauleer({required this.errmas});
}
