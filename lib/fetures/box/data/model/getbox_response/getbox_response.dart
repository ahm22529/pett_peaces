import 'package:pett_peaces/fetures/box/domain/entity/box_entity.dart';

import 'data.dart';

class GetboxResponse extends BoxEntity {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  GetboxResponse({this.status, this.statusCode, this.data, this.message}):super(count: data?.count??0,massage: message??"",product: data?.items??[],total: data?.subTotal??0,dis: data?.taxPercent??0,id: data?.count??0);

  factory GetboxResponse.fromJson(Map<String, dynamic> json) {
    return GetboxResponse(
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
