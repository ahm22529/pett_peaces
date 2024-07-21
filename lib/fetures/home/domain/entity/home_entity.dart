import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';
import 'package:pett_peaces/fetures/home/domain/entity/coursese_entity.dart';
import 'package:pett_peaces/fetures/home/domain/entity/paners_entity.dart';

class HomeEntity {
  final List<ProducEntity> product;

  final List<CourseseEntity> cou;
  final List<dynamic> paners;
  final AnmilesEntity? anmilesEntity;

  HomeEntity(
      {required this.product,
      this.anmilesEntity,
      required this.cou,
      required this.paners});
}
