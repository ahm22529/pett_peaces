import 'package:pett_peaces/fetures/store/domain/entity/department_entity.dart';

import 'sub_department.dart';

class Datum extends DepartmentEntity {
  int? id;
  String? name;
  List<SubDepartment>? subDepartments;

  Datum({this.id, this.name, this.subDepartments})
      : super(idd: id ?? 0, namee: name ?? "",subdet: subDepartments??[]);

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['id'] as int?,
        name: json['name'] as String?,
        subDepartments: (json['sub_departments'] as List<dynamic>?)
            ?.map((e) => SubDepartment.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'sub_departments': subDepartments?.map((e) => e.toJson()).toList(),
      };
}
