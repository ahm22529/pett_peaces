import 'package:pett_peaces/fetures/home/domain/entity/coursese_entity.dart';

import 'media.dart';

class Datum extends CourseseEntity {
  int? id;
  String? name;
  String? price;
  int? duration;
  String? animalType;
  String? description;
  String? location;
  String? startDate;
  String? video;
  String? image;
  Media? media;
  bool? isUserAuthSubscribe;

  Datum({
    this.id,
    this.name,
    this.price,
    this.duration,
    this.animalType,
    this.description,
    this.location,
    this.startDate,
    this.video,
    this.image,
    this.media,
    this.isUserAuthSubscribe,
  }) : super(
            locatione: location ?? "hljvuh",
            day: duration ?? 0,
            nameof: name ?? "",
            priceof: price ?? "",
            des: description ?? "",
            idd: id ?? 0,
            imag: image ?? '',
            videoo: video ?? "",
            otherimg: media?.image ?? [],
            type: animalType ?? "",
            isactive: isUserAuthSubscribe ?? false,
            startdate: startDate ?? "");

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['id'] as int?,
        name: json['name'] as String?,
        price: json['price'] as String?,
        duration: json['duration'] as int?,
        animalType: json['animal_type'] as String?,
        description: json['description'] as String?,
        location: json['location'] as String?,
        startDate: json['start_date'] as String?,
        video: json['video'] as String?,
        image: json['image'] as String?,
        media: json['media'] == null
            ? null
            : Media.fromJson(json['media'] as Map<String, dynamic>),
        isUserAuthSubscribe: json['is_user_auth_subscribe'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'price': price,
        'duration': duration,
        'animal_type': animalType,
        'description': description,
        'location': location,
        'start_date': startDate,
        'video': video,
        'image': image,
        'media': media?.toJson(),
        'is_user_auth_subscribe': isUserAuthSubscribe,
      };
}
