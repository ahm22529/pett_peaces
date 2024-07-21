import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';

class Product extends ProducEntity {
  int? id;
  String? name;
  String? image;
  List<dynamic>? otherImages;
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
            nameof: name!,
            volum: details!,
            id: id ?? 0,
            img: image!,
            prices: price!,
            oherimage: otherImages ?? [],
            detai: details ?? "",
            shortdescription: shortDescription ?? "",
            oldprice: oldPrice ?? "",
            pro: []);

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'] as int?,
        name: json['name'] as String?,
        image: json['image'] as String?,
        otherImages: json['other_images'] as List<dynamic>?,
        price: json['price'] as String?,
        oldPrice: json['old_price'] as String?,
        shortDescription: json['short_description'] as String?,
        details: json['details'] as String?,
      );

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
