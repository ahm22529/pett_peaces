import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';

class SelEntity {
  final AnmilesEntity anmilesEntity;
  final String selde;
  final int pricee;
  final isactive;
  SelEntity(
      {required this.isactive,
      required this.anmilesEntity,
      required this.selde,
      required this.pricee});
}
