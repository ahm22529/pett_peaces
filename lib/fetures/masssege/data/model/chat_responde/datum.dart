import 'package:pett_peaces/fetures/masssege/domain/entity/freined_chat_entity.dart';

import 'agora.dart';
import 'last_message.dart';
import 'user.dart';

class Datum extends FreinedChatEntity {
  int? id;
  User? user;
  DateTime? createdAt;
  LastMessage? lastMessage;
  bool? unreadMessages;
  Agora? agora;

  Datum({
    this.id,
    this.user,
    this.createdAt,
    this.lastMessage,
    this.unreadMessages,
    this.agora,
  }) : super(
            chatid: id ?? 1,
            chanel: agora?.channel ?? "",
            rectoken: agora?.rtcToken ?? "",
            imagesender: user?.image ?? "",
            userid: user?.id ?? 0,
            lastmassage: lastMessage?.message ?? "",
            date: createdAt!,
            isshow: unreadMessages ?? false,
            name: user?.name ?? "");

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['id'] as int?,
        user: json['user'] == null
            ? null
            : User.fromJson(json['user'] as Map<String, dynamic>),
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        lastMessage: json['last_message'] == null
            ? null
            : LastMessage.fromJson(
                json['last_message'] as Map<String, dynamic>),
        unreadMessages: json['unread_messages'] as bool?,
        agora: json['agora'] == null
            ? null
            : Agora.fromJson(json['agora'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'user': user?.toJson(),
        'created_at': createdAt?.toIso8601String(),
        'last_message': lastMessage?.toJson(),
        'unread_messages': unreadMessages,
        'agora': agora?.toJson(),
      };
}
