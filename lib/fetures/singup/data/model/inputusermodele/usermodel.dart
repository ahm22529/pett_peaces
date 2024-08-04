import 'package:pett_peaces/fetures/singup/data/model/sing_up_response/data.dart';
import 'package:pett_peaces/fetures/singup/data/model/sing_up_response/sing_up_response.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Usermodel extends UserEntity {
  Usermodel({
    required super.massage,
    required super.id,
    required super.type,
    required super.name,
    required super.phone,
    required super.email,
    required super.image,
    required super.token,
    required super.is_plan_subscribe,
    required super.email_verified_at,
  });

  factory Usermodel.fromapi(Map<String, dynamic> json) {
    SingUpResponse response = SingUpResponse.fromJson(json);
    Data data = response.data!;
    return Usermodel(
      massage: response.message ?? '',
      id: data.id.toString(),
      type: data.type ?? '',
      name: data.name ?? '',
      phone: data.mobile ?? '',
      email: data.email ?? '',
      image: data.image ?? '',
      token: data.token ?? '',
      is_plan_subscribe: data.isPlanSubscribe ?? false,
      email_verified_at: data.emailVerifiedAt ?? false,
    );
  }
}
