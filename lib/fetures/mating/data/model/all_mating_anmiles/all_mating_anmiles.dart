import 'package:pett_peaces/fetures/mating/domain/entity/all_mating_entity.dart';

import 'data.dart';

class AllMatingAnmiles extends ListAllMatingEntity {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  AllMatingAnmiles({this.status, this.statusCode, this.data, this.message})
      : super(da: data?.da ?? []);

  factory AllMatingAnmiles.fromJson(Map<String, dynamic> json) {
    return AllMatingAnmiles(
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
