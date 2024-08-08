
import 'package:pett_peaces/fetures/store/domain/entity/sub_depart_entity.dart';

class SubDepartment extends SubdepartEntity {
  int? id;
  String? name;

  SubDepartment({this.id, this.name})
      : super(
          idd: id ?? 0,
          namee: name ?? "",
        );

  factory SubDepartment.fromJson(Map<String, dynamic> json) => SubDepartment(
        id: json['id'] as int?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
