import 'package:pett_peaces/fetures/chatdetails/domain/entity/massage_entity.dart';

import 'data.dart';

class Pusherresponse extends MassageEntity {
  Data? data;

  Pusherresponse({this.data})
      : super(
            userrid: data?.userId ?? 0,
            attachc: data?.attach ?? "",
            date: data!.createdAt!,
            idd: data?.id ?? 0,
            massage: data?.message ?? "");

  factory Pusherresponse.fromJson(Map<String, dynamic> json) {
    return Pusherresponse(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'data': data?.toJson(),
      };
}
