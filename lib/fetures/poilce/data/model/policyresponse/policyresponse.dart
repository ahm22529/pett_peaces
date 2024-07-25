import 'package:pett_peaces/fetures/poilce/domain/entity/policyentity.dart';

import 'data.dart';

class Policyresponse extends Dataentity {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  Policyresponse({this.status, this.statusCode, this.data, this.message})
      : super(
            id: data?.id ?? 0,
            polic: data?.description ?? "",
            typee: data?.type ?? "");

  factory Policyresponse.fromJson(Map<String, dynamic> json) {
    return Policyresponse(
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
