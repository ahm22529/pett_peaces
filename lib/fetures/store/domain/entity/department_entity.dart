import 'package:pett_peaces/fetures/store/domain/entity/sub_depart_entity.dart';

class DepartmentEntity {
  final int idd;
  final String namee;
  final List<SubdepartEntity> subdet;

  DepartmentEntity(
      {required this.idd, required this.namee, required this.subdet});
}

class AlldDepartment {
  final List<DepartmentEntity> dep;

  AlldDepartment({required this.dep});
}
