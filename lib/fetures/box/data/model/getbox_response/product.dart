import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';

import 'other_image.dart';

class Product extends ProducEntity {
  int? id;
  String? name;
  String? image;
  List<OtherImage>? otherImages;
  String? price;
  String? oldPrice;
  String? shortDescription;
  String? details;

  Product({
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
            id: id ?? 0,
            nameof: name ?? "",
            oherimage: otherImages ?? [],
            img: image ?? '',
            prices: price ?? '',
            oldprice: oldPrice ?? '',
            pro: [],
            volum: '',
            shortdescription: shortDescription ?? "",
            qan: 1);

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'] as int?,
        name: json['name'] as String?,
        image: json['image'] as String?,
        otherImages: (json['other_images'] as List<dynamic>?)
            ?.map((e) => OtherImage.fromJson(e as Map<String, dynamic>))
            .toList(),
        price: json['price'] as String?,
        oldPrice: json['old_price'] as String?,
        shortDescription: json['short_description'] as String?,
        details: json['details'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
        'other_images': otherImages?.map((e) => e.toJson()).toList(),
        'price': price,
        'old_price': oldPrice,
        'short_description': shortDescription,
        'details': details,
      };
}
