class FreinedChatEntity {
  final String imagesender, lastmassage, name;

  final bool isshow;
  final DateTime date;
  final int chatid, userid;

  FreinedChatEntity(
      {required this.imagesender,
      required this.lastmassage,
      required this.userid,
      required this.date,
      required this.chatid,
      required this.name,
      required this.isshow});
}

class AllChat {
  final List<FreinedChatEntity> chat;
  final int lastpage;
  AllChat({required this.chat, required this.lastpage});
}
