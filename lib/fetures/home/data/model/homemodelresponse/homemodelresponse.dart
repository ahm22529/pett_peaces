import 'package:pett_peaces/fetures/home/domain/entity/home_entity.dart';

import 'data.dart';

class Homemodelresponse extends HomeEntity {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  Homemodelresponse({
    this.status,
    this.statusCode,
    this.data,
    this.message,
  }) : super(
            anmilesEntity: data?.myAnimal,
            paners: data?.paners ?? [],
            product: data?.product ?? [],
            cou: data?.cou ?? []);

  factory Homemodelresponse.fromJson(Map<String, dynamic> json) {
    return Homemodelresponse(
      status: json['status'] as bool?,
      statusCode: json['status_code'] as int?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'status': status,
        'status_code': statusCode,
        'data': data?.toJson(),
        'message': message,
      };
}
