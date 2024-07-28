import 'package:pett_peaces/fetures/mating/domain/entity/mating_entity.dart';

import 'data.dart';

class Matingresponse extends MatingEntity {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  Matingresponse({this.status, this.statusCode, this.data, this.message})
      : super(anmil: data?.data ?? [], lastpage: data?.meta?.lastPage ?? 0);

  factory Matingresponse.fromJson(Map<String, dynamic> json) {
    return Matingresponse(
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
