import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';

class AllMatingEntity {
  final AnmilesEntity anmilesEntity;

  final isactive;
  AllMatingEntity({
    required this.isactive,
    required this.anmilesEntity,
  });
}

class ListAllMatingEntity {
final  List<AllMatingEntity> da;

  ListAllMatingEntity({required this.da});
}
