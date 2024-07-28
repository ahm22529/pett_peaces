import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';
import 'package:pett_peaces/fetures/mating/data/model/all_mating_anmiles/all_mating_anmiles.dart';
import 'package:pett_peaces/fetures/mating/domain/entity/all_mating_entity.dart';

import 'animal.dart';

class Datum extends AllMatingEntity{
  Animal? animal;
  bool? isAllowedDelete;

  Datum({this.animal, this.isAllowedDelete}):super(anmilesEntity: animal??AnmilesEntity(namee: "", otherimage: [], typee: "", agee: 0, des: "", gendere: "", idd: 0, imagee: "", predec: ""),isactive:isAllowedDelete ,);

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        animal: json['animal'] == null
            ? null
            : Animal.fromJson(json['animal'] as Map<String, dynamic>),
        isAllowedDelete: json['is_allowed_delete'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'animal': animal?.toJson(),
        'is_allowed_delete': isAllowedDelete,
      };
}
