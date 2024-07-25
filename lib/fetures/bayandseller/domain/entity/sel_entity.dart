import '../../../home/domain/entity/anmiles_entity.dart';

class SelEntity {
  final List<AnmilesEntity> anmilesEntity;
  final String selde;
  final int price;
  final isactive;
  SelEntity(this.isactive,
      {required this.anmilesEntity, required this.selde, required this.price});
}
