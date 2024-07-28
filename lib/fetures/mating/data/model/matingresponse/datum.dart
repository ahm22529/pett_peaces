import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';

import 'animal.dart';

class Datum extends AnmilesEntity {
  Animal? animal;
  bool? isAllowedDelete;

  Datum({this.animal, this.isAllowedDelete})
      : super(
            agee: animal?.age ?? 0,
            namee: animal?.name ?? "",
            idd: animal?.id ?? 0,
            gendere: animal?.gender ?? "",
            typee: animal?.type ?? "",
            des: animal?.description ?? "",
            predec: animal?.name ?? "",
            otherimage: animal?.additonalPhotots?.images ?? [],
            imagee: animal?.image ?? "");

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
