class DepartmentEntity {
  final int idd;
  final String namee;
  final List<Subdepart> subdet;

  DepartmentEntity(
      {required this.idd, required this.namee, required this.subdet});
}

class AlldDepartment {
  final List<DepartmentEntity> dep;

  AlldDepartment({required this.dep});
}

class Subdepart {
  final int idd;
  final String namee;

  Subdepart({required this.idd, required this.namee});
}
