import 'package:pett_peaces/fetures/chatdetails/domain/entity/chat_details_entity.dart';

import 'data.dart';

class Chatdetailsresponse extends ChatDetailsEntity {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  Chatdetailsresponse({
    this.status,
    this.statusCode,
    this.data,
    this.message,
  }):super(massage: data?.massage??[],channel:data?.channel??"" ,tokrn:data?.tokrn??"" ,idd: data?.idd ??0);

  factory Chatdetailsresponse.fromJson(Map<String, dynamic> json) {
    return Chatdetailsresponse(
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
