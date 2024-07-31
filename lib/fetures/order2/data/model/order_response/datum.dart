import 'package:pett_peaces/fetures/order2/domain/entity/order_entity.dart';

import 'item.dart';

class Datum extends OrderEntity{
  int? id;
  String? orderNum;
  String? total;
  String? paymentType;
  int? itemCount;
  List<Item>? items;
  DateTime? createdAt;

  Datum({
    this.id,
    this.orderNum,
    this.total,
    this.paymentType,
    this.itemCount,
    this.items,
    this.createdAt,
  }):super(idd: id!,revnamber: orderNum??"",price:total??"" ,waypay: paymentType??"",date: createdAt!,prod: []);

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['id'] as int?,
        orderNum: json['order_num'] as String?,
        total: json['total'] as String?,
        paymentType: json['payment_type'] as String?,
        itemCount: json['item_count'] as int?,
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'order_num': orderNum,
        'total': total,
        'payment_type': paymentType,
        'item_count': itemCount,
        'items': items?.map((e) => e.toJson()).toList(),
        'created_at': createdAt?.toIso8601String(),
      };
}
