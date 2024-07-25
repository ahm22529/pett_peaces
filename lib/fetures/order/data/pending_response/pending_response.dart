import 'package:pett_peaces/fetures/order/domain/entity/llist_booking_entity.dart';

import 'data.dart';

class PendingResponse extends LlistBookingEntity {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  PendingResponse({this.status, this.statusCode, this.data, this.message})
      : super(book: data?.data ?? [], nexturl: data?.links?.next ?? "");

  factory PendingResponse.fromJson(Map<String, dynamic> json) {
    return PendingResponse(
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
