import 'package:pett_peaces/fetures/masssege/domain/entity/freined_chat_entity.dart';

import 'data.dart';

class ChatResponde extends AllChat {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  ChatResponde({this.status, this.statusCode, this.data, this.message})
      : super(
            chat: data?.chats?.data ?? [],
            lastpage: data?.chats?.meta?.lastPage ?? 0);

  factory ChatResponde.fromJson(Map<String, dynamic> json) => ChatResponde(
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
