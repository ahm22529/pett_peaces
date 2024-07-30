import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/store/data/model/all_p_roduct_response/other_image.dart';

class Datum extends ProducEntity {
  int? id;
  String? name;
  String? image;
  List<OtherImage>? otherImages;
  String? price;
  String? oldPrice;
  String? shortDescription;
  String? details;

  Datum({
    this.id,
    this.name,
    this.image,
    this.otherImages,
    this.price,
    this.oldPrice,
    this.shortDescription,
    this.details,
  }) : super(
          img: image ?? "",
          prices: price ?? "",
          id: id,
          nameof: name ?? "",
          volum: shortDescription ?? "",
          oherimage: otherImages ?? [],
          oldprice: oldPrice ?? "",
          detai: details ?? "",
          shortdescription: shortDescription ?? "",
          qan: 0,
          pro: [],
        );

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
