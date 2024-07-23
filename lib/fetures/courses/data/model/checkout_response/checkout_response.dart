import 'package:pett_peaces/fetures/courses/domain/entity/checkout_enity.dart';

import 'data.dart';

class CheckoutResponse extends CheckoutEnity {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  CheckoutResponse({this.status, this.statusCode, this.data, this.message}):super(url: data?.url??"");

  factory CheckoutResponse.fromJson(Map<String, dynamic> json) {
    return CheckoutResponse(
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
