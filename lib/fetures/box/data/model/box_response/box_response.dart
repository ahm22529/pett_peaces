import 'package:pett_peaces/fetures/box/domain/entity/box_entity.dart';

import 'data.dart';

class BoxResponse extends BoxEntity {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  BoxResponse({this.status, this.statusCode, this.data, this.message})
      : super(
            count: data?.cart?.count ?? 0,
            id: data?.cart?.id ?? 0,
            dis: data?.cart?.taxPercent ?? 0,
            product: data?.cart?.items ?? [],
            total: data?.cart?.subTotal ?? 0,
            massage: message ?? "");

  factory BoxResponse.fromJson(Map<String, dynamic> json) => BoxResponse(
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
