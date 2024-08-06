import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';

import 'product.dart';

class Item extends ProducEntity {
  int? id;
  int? price;
  int? qty;
  int? total;
  Product? product;

  Item({this.id, this.price, this.qty, this.total, this.product})
      : super(
            id: id,
            detai: product?.detai ?? "",
            img: product?.image ?? "",
            oherimage: product?.oherimage ?? [],
            oldprice: product?.oldPrice ?? "",
            prices: price.toString() ?? "",
            qan: qty,
            nameof: product?.name ?? "",
            volum: product?.oldPrice ?? "",
            shortdescription: product?.shortDescription ?? "",
            pro: product?.pro ?? []);

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json['id'] as int?,
        price: json['price'] as int?,
        qty: json['qty'] as int?,
        total: json['total'] as int?,
        product: json['product'] == null
            ? null
            : Product.fromJson(json['product'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'price': price,
        'qty': qty,
        'total': total,
        'product': product?.toJson(),
      };
}
