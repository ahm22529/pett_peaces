class UserEntity {
  final String id, type, name, phone, email, image, token, massage;
  final bool is_plan_subscribe, email_verified_at;

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
