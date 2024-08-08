part of 'department_cubit.dart';

@immutable
sealed class DepartmentState {}

final class DepartmentInitial extends DepartmentState {}

final class DepartmentLoad extends DepartmentState {}

final class DepartmentSucess extends DepartmentState {
  final AlldDepartment alldDepartment;

  DepartmentSucess({required this.alldDepartment});
}

final class DepartmentIfauiler extends DepartmentState {
  final String errmas;

  DepartmentIfauiler({required this.errmas});
}

final class Updatedepart extends DepartmentState {
  final DepartmentEntity departmentEntity;

  Updatedepart({required this.departmentEntity});
}
