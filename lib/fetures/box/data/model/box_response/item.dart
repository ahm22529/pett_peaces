import 'package:pett_peaces/fetures/box/domain/entity/iteam_entity.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';

import 'product.dart';

class Item extends IteamEntity {
  int? id;
  int? price;
  int? qty;
  int? total;
  Product? product;

  Item({this.id, this.price, this.qty, this.total, this.product})
      : super(
            idd: id ?? 0,
            pricee: price ?? 0,
            qounte: qty ?? 0,
            products: product ??
                ProducEntity(
                  qan: qty,
                    nameof: '',
                    id: id,
                    prices: '',
                    volum: '',
                    img: '',
                    detai: '',
                    oherimage: [],
                    oldprice: '',
                    shortdescription: '',
                    pro: []),
            totale: total ?? 0);

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
