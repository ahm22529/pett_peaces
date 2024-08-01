import 'package:pett_peaces/fetures/chatdetails/domain/entity/chat_details_entity.dart';

import 'chat_data.dart';
import 'messages.dart';

class Data extends ChatDetailsEntity{
  ChatData? chatData;
  Messages? messages;

  Data({this.chatData, this.messages}):super(channel:chatData?.agora?.channel??"" ,tokrn:chatData?.agora?.rtcToken??"" ,massage:messages?.data??[] ,idd:chatData?.id??0 );

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        chatData: json['chat_data'] == null
            ? null
            : ChatData.fromJson(json['chat_data'] as Map<String, dynamic>),
        messages: json['messages'] == null
            ? null
            : Messages.fromJson(json['messages'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'chat_data': chatData?.toJson(),
        'messages': messages?.toJson(),
      };
}
