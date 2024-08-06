class DepartmentEntity {
  final int idd;
  final String namee;

  DepartmentEntity({required this.idd, required this.namee});
}

class AlldDepartment {
  final List<DepartmentEntity> dep;

  AlldDepartment({required this.dep});
}
