import 'cart.dart';
import 'item.dart';

class Data {
  Item? item;
  Cart? cart;

  Data({this.item, this.cart});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        item: json['item'] == null
            ? null
            : Item.fromJson(json['item'] as Map<String, dynamic>),
        cart: json['cart'] == null
            ? null
            : Cart.fromJson(json['cart'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'item': item?.toJson(),
        'cart': cart?.toJson(),
      };
}
