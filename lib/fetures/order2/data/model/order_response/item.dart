import 'product.dart';

class Item {
  int? id;
  int? price;
  int? qty;
  int? total;
  Product? product;

  Item({this.id, this.price, this.qty, this.total, this.product});

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
