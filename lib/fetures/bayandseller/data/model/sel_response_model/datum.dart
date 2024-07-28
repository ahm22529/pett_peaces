import 'package:pett_peaces/fetures/bayandseller/domain/entity/sel_entity.dart';

import 'animal.dart';

class Datum extends SelEntity {
  int? price;
  String? saleDescription;
  Animal? animal;
  bool? isAllowedDelete;

  Datum({
    this.price,
    this.saleDescription,
    this.animal,
    this.isAllowedDelete,
  }) : super(
            anmilesEntity: animal!,
            selde: saleDescription ?? '',
            pricee: price ?? 0,
            isactive: isAllowedDelete);

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        price: json['price'] as int?,
        saleDescription: json['sale_description'] as String?,
        animal: json['animal'] == null
            ? null
            : Animal.fromJson(json['animal'] as Map<String, dynamic>),
        isAllowedDelete: json['is_allowed_delete'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'price': price,
        'sale_description': saleDescription,
        'animal': animal?.toJson(),
        'is_allowed_delete': isAllowedDelete,
      };
}
