import 'package:pett_peaces/fetures/chatdetails/domain/entity/massage_entity.dart';

class ChatDetailsEntity {
  final String channel, tokrn;
  final List<MassageEntity> massage;
  final int idd;

  ChatDetailsEntity({
    required this.massage,
    required this.channel,
    required this.tokrn,
    required this.idd,
  });
}
