import 'package:hive_flutter/hive_flutter.dart';
part 'sub_depart_entity.g.dart';

@HiveType(typeId: 2)
class SubdepartEntity {
  @HiveField(1)
  final int idd;
  @HiveField(2)
  final String namee;

  SubdepartEntity({required this.idd, required this.namee});
}
