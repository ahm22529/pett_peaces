import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';

import 'product.dart';
import 'suggested_product.dart';

class Data extends ProducEntity {
  Product? product;
  List<SuggestedProduct>? suggestedProducts;

  Data({this.product, this.suggestedProducts})
      : super(
            img: product?.image ?? "",
            prices: product?.price ?? "",
            id: product?.id,
            nameof: product?.name ?? "",
            volum: product?.shortDescription ?? "",
            oherimage: product?.otherImages ?? [],
            oldprice: product?.oldPrice ?? "",
            detai: product?.detai ?? "",
            shortdescription: product?.shortDescription ?? "",
            pro: suggestedProducts ?? [],
            qan: 0);

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        product: json['product'] == null
            ? null
            : Product.fromJson(json['product'] as Map<String, dynamic>),
        suggestedProducts: (json['suggested_products'] as List<dynamic>?)
            ?.map((e) => SuggestedProduct.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'product': product?.toJson(),
        'suggested_products':
            suggestedProducts?.map((e) => e.toJson()).toList(),
      };
}
