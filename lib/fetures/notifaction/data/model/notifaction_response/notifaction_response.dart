import 'package:pett_peaces/fetures/notifaction/domain/entity/notifaction_entity.dart';

import 'data.dart';

class NotifactionResponse extends Allnotifaction {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  NotifactionResponse({
    this.status,
    this.statusCode,
    this.data,
    this.message,
  }) : super(notifaction: data?.data ?? []);

  factory NotifactionResponse.fromJson(Map<String, dynamic> json) {
    return NotifactionResponse(
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
