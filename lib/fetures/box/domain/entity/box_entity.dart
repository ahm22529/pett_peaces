import 'package:pett_peaces/fetures/box/domain/entity/iteam_entity.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';

class BoxEntity {
  final List<IteamEntity> product;
  final int id, count, dis, total;
  final String massage;

  BoxEntity(
      {required this.product,
      required this.id,
      required this.count,
      required this.dis,
      required this.total,
      required this.massage});
}
