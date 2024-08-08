import 'package:hive_flutter/adapters.dart';
part 'userentity.g.dart';

@HiveType(typeId: 1)
class UserEntity {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String type;
  @HiveField(2)
  final String name;
  @HiveField(3)
  final String phone;
  @HiveField(4)
  final String email;
  @HiveField(5)
  final String image;
  @HiveField(6)
  final String token;
  @HiveField(7)
  final String massage;
  @HiveField(8)
  final bool is_plan_subscribe;
  @HiveField(9)
  final bool email_verified_at;

  UserEntity(
      {required this.massage,
      required this.id,
      required this.type,
      required this.name,
      required this.phone,
      required this.email,
      required this.image,
      required this.token,
      required this.is_plan_subscribe,
      required this.email_verified_at});
}
