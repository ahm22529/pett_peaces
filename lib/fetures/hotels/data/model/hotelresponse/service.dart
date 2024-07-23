import 'package:pett_peaces/fetures/hotels/domain/entity/services_entity.dart';

class Service extends ServicesEntity {
  int? id;
  String? name;
  String? price;
  String? image;

  Service({this.id, this.name, this.price, this.image})
      : super(
            imagee: image ?? "",
            pric: price ?? "",
            servacename: name ?? "",
            idd: id ?? 0);

  factory Service.fromJson(Map<String, dynamic> json) => Service(
        id: json['id'] as int?,
        name: json['name'] as String?,
        price: json['price'] as String?,
        image: json['image'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'price': price,
        'image': image,
      };
}
