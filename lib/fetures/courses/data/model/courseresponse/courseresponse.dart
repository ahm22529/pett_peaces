import 'package:pett_peaces/fetures/courses/domain/entity/courses_entity.dart';

import 'data.dart';

class Courseresponse extends CoursesEntityList {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  Courseresponse({this.status, this.statusCode, this.data, this.message})
      : super(cou: data?.data ?? []);

  factory Courseresponse.fromJson(Map<String, dynamic> json) {
    return Courseresponse(
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
