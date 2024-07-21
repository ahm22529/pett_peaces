class ProducEntity {
  final String nameof, prices, volum, img, shortdescription, oldprice, detai;
  int? id;
  final List oherimage, pro;

  ProducEntity(
      {required this.nameof,
      required this.id,
      required this.prices,
      required this.volum,
      required this.img,
      required this.detai,
      required this.oherimage,
      required this.oldprice,
      required this.shortdescription,
      required this.pro});
}
