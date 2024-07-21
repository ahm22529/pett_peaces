import 'package:pett_peaces/fetures/hotels/domain/entity/services_entity.dart';

class DetailsEntity {
  final List<ServicesEntity> ser;

  final String namee, emai, phonr, latlong, adders, des, image, vido;
  final int numberofimage;

  DetailsEntity(
      {required this.ser,
      required this.namee,
      required this.emai,
      required this.phonr,
      required this.latlong,
      required this.adders,
      required this.des,
      required this.numberofimage,
      required this.image,
      required this.vido});
}
