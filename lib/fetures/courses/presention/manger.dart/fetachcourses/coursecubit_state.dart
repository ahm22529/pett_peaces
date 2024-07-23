part of 'coursecubit_cubit.dart';

@immutable
sealed class CoursecubitState {}

final class CoursecubitInitial extends CoursecubitState {}

final class Coursecubitload extends CoursecubitState {}

final class Coursecubitsucess extends CoursecubitState {
  final CoursesEntityList coursesEntityList;

  Coursecubitsucess({required this.coursesEntityList});
}

final class Coursecubitfauiler extends CoursecubitState {
  final String errmass;

  Coursecubitfauiler({required this.errmass});
}
