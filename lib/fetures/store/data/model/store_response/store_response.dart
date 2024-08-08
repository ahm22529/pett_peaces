import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/store/domain/entity/details_entity.dart';

import 'data.dart';

class StoreResponse extends DetailsPProductEntity {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  StoreResponse({this.status, this.statusCode, this.data, this.message})
      : super(product: data?.product??ProducEntity(nameof: '', qan: 0, id: 0, prices: '', volum: '', img: '', detai: '', oherimage: [], oldprice: '', shortdescription: '', pro: []),suggtion: data?.suggestedProducts??[]
                   );

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
