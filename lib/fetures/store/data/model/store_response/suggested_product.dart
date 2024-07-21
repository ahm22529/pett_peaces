import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';

class SuggestedProduct extends ProducEntity {
  int? id;
  String? name;
  String? image;
  List<dynamic>? otherImages;
  String? price;
  dynamic oldPrice;
  String? shortDescription;
  String? details;

  SuggestedProduct({
    this.id,
    this.name,
    this.image,
    this.otherImages,
    this.price,
    this.oldPrice,
    this.shortDescription,
    this.details,
  }) : super(
            detai: details ?? "",
            oherimage: otherImages ?? [],
            id: id,
            prices: price ?? "",
            shortdescription: shortDescription ?? "",
            volum: details ?? "",
            nameof: name ?? "",
            img: image ?? "",
            oldprice: oldPrice ?? "",
            pro: []);

  factory SuggestedProduct.fromJson(Map<String, dynamic> json) {
    return SuggestedProduct(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      otherImages: json['other_images'] as List<dynamic>?,
      price: json['price'] as String?,
      oldPrice: json['old_price'] as dynamic,
      shortDescription: json['short_description'] as String?,
      details: json['details'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
        'other_images': otherImages,
        'price': price,
        'old_price': oldPrice,
        'short_description': shortDescription,
        'details': details,
      };
}
