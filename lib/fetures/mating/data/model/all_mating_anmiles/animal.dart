import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';

import 'additonal_photots.dart';

class Animal extends AnmilesEntity {
  int? id;
  String? image;
  String? name;
  String? type;
  String? gender;
  int? age;
  String? description;
  String? typeDescription;
  AdditonalPhotots? additonalPhotots;

  Animal({
    this.id,
    this.image,
    this.name,
    this.type,
    this.gender,
    this.age,
    this.description,
    this.typeDescription,
    this.additonalPhotots,
  }):super(agee:age??0 ,idd: id??0,imagee:image??"" ,otherimage: additonalPhotots?.images??[],des:description??"" ,predec:typeDescription??"" ,typee:type??"" ,gendere:gender??"" ,namee: name??"");

  factory Animal.fromJson(Map<String, dynamic> json) => Animal(
        id: json['id'] as int?,
        image: json['image'] as String?,
        name: json['name'] as String?,
        type: json['type'] as String?,
        gender: json['gender'] as String?,
        age: json['age'] as int?,
        description: json['description'] as String?,
        typeDescription: json['type_description'] as String?,
        additonalPhotots: json['additonal_photots'] == null
            ? null
            : AdditonalPhotots.fromJson(
                json['additonal_photots'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'name': name,
        'type': type,
        'gender': gender,
        'age': age,
        'description': description,
        'type_description': typeDescription,
        'additonal_photots': additonalPhotots?.toJson(),
      };
}
