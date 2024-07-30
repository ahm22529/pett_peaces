import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';

import 'item.dart';

class Cart {
  int? id;
  int? count;
  int? subTotal;
  int? taxPercent;
  List<Item>? items;

  Cart({this.id, this.count, this.subTotal, this.taxPercent, this.items});

  factory Cart.fromJson(Map<String, dynamic> json) => Cart(
        id: json['id'] as int?,
        count: json['count'] as int?,
        subTotal: json['sub_total'] as int?,
        taxPercent: json['tax_percent'] as int?,
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'count': count,
        'sub_total': subTotal,
        'tax_percent': taxPercent,
        'items': items?.map((e) => e.toJson()).toList(),
      };
}
