import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/entity/exambel_details_enity.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/entity/examel_entity.dart';

import 'data.dart';

class ExambelAndAdvaceResponse extends ExamelEntity {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  ExambelAndAdvaceResponse({
    this.status,
    this.statusCode,
    this.data,
    this.message,
  }) : super(
            examel: data?.data ?? [],
            lastpage: data?.lastpage ?? 0,
            nextpageurl: data?.nextpageurl ?? "");

  factory ExambelAndAdvaceResponse.fromJson(Map<String, dynamic> json) {
    return ExambelAndAdvaceResponse(
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
