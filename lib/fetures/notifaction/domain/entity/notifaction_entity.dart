class NotifactionEntity {
  final String icone, mass, type;
  final DateTime dateTime;

  NotifactionEntity(
      {required this.icone,
      required this.mass,
      required this.type,
      required this.dateTime});
}

class Allnotifaction {
  final List<NotifactionEntity> notifaction;

  Allnotifaction({required this.notifaction});
}
