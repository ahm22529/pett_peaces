import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';

class ListAnmileEntity {
  final List<AnmilesEntity> anmiles;
  final int lastpage, currentpage;

  ListAnmileEntity(
      {required this.anmiles,
      required this.lastpage,
      required this.currentpage});
}
