import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';

import 'data.dart';

class StoreResponse extends ProducEntity {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  StoreResponse({this.status, this.statusCode, this.data, this.message})
      : super(
            img: data?.img ?? "",
            prices: data?.prices ?? "",
            id: data?.id ?? 0,
            nameof: data?.nameof ?? "",
            volum: data?.volum ?? "",
            oherimage: data?.oherimage ?? [],
            oldprice: data?.oldprice ?? "",
            detai: data?.detai ?? "",
            shortdescription: data?.shortdescription ?? "",
            qan: 0,
            pro: data?.suggestedProducts ?? []);

  factory StoreResponse.fromJson(Map<String, dynamic> json) => StoreResponse(
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
