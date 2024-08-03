import 'package:pett_peaces/fetures/home/data/model/homemodelresponse/my_amiles.dart';
import 'package:pett_peaces/fetures/home/domain/entity/home_entity.dart';

import 'course.dart';
import 'product.dart';

class Data extends HomeEntity {
  List<Course>? courses;
  MyyAnimal? myAnimal;
  List<Product>? products;
  List<dynamic>? banners;

  Data({this.courses, this.myAnimal, this.products, this.banners})
      : super(
            anmilesEntity: myAnimal,
            product: products ?? [],
            paners: banners ?? [],
            cou: courses ?? []);

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        courses: (json['courses'] as List<dynamic>?)
            ?.map((e) => Course.fromJson(e as Map<String, dynamic>))
            .toList(),
        myAnimal: json['my_animal'] == null
            ? null
            : MyyAnimal.fromJson(json['my_animal'] as Map<String, dynamic>),
        products: (json['products'] as List<dynamic>?)
            ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
            .toList(),
        banners: json['banners'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'courses': courses?.map((e) => e.toJson()).toList(),
        'my_animal': myAnimal?.toJson(),
        'products': products?.map((e) => e.toJson()).toList(),
        'banners': banners,
      };
}
