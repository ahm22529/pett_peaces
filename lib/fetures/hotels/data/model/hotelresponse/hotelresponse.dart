import 'package:pett_peaces/fetures/aboutus/presention/view/aboutus.dart';
import 'package:pett_peaces/fetures/hotels/domain/entity/aboutus_entity.dart';
import 'package:pett_peaces/fetures/hotels/domain/entity/hotel_entity.dart';

import 'datum.dart';

class Hotelresponse extends HotelEntity {
  bool? status;
  int? statusCode;
  List<Datum>? data;
  String? message;

  Hotelresponse({this.status, this.statusCode, this.data, this.message})
      : super(ser: data ?? []);

  factory Hotelresponse.fromJson(Map<String, dynamic> json) => Hotelresponse(
        status: json['status'] as bool?,
        statusCode: json['status_code'] as int?,
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
            .toList(),
        message: json['message'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'status_code': statusCode,
        'data': data?.map((e) => e.toJson()).toList(),
        'message': message,
      };
}
