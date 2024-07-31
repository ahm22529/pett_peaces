import 'package:pett_peaces/fetures/order2/domain/entity/order_entity.dart';

import 'data.dart';

class OrderResponse extends ListOrderEntity {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  OrderResponse({this.status, this.statusCode, this.data, this.message}):super(order: data?.data??[]);

  factory OrderResponse.fromJson(Map<String, dynamic> json) => OrderResponse(
        status: json['status'] as bool?,
        statusCode: json['status_code'] as int?,
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
        message: json['message'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'status_code': statusCode,
        'data': data?.toJson(),
        'message': message,
      };
}
