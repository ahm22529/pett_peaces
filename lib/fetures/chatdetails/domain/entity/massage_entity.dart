class MassageEntity {
  final String massage, attachc;
  final int idd, userrid;
  final DateTime date;

  MassageEntity(
      {required this.idd,
      required this.userrid,
      required this.massage,
      required this.date,
      required this.attachc});
}
