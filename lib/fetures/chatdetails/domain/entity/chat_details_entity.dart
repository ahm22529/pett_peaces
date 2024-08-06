import 'package:pett_peaces/fetures/chatdetails/domain/entity/massage_entity.dart';

class ChatDetailsEntity {
  final String channel, tokrn;
  final List<MassageEntity> massage;
  final int idd, userid, lastpage;

  ChatDetailsEntity(
      {required this.massage,
      required this.lastpage,
      required this.channel,
      required this.tokrn,
      required this.idd,
      required this.userid});
}
