import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';

class IteamEntity {
  final ProducEntity products;
  final int idd, pricee, qounte, totale;

  IteamEntity(
      {required this.products,
      required this.idd,
      required this.pricee,
      required this.qounte,
      required this.totale});
}
