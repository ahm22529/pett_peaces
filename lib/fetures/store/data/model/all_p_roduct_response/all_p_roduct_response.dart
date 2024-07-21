import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/store/domain/entity/store_entity.dart';

import 'data.dart';

class AllPRoductResponse extends StoreEntity {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  AllPRoductResponse({
    this.status,
    this.statusCode,
    this.data,
    this.message,
  }) : super(product: data?.data ?? [], lastpage: data?.meta?.lastPage ?? 1);

  factory AllPRoductResponse.fromJson(Map<String, dynamic> json) {
    return AllPRoductResponse(
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
