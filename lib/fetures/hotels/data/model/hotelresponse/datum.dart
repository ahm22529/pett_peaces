import 'package:pett_peaces/fetures/hotels/domain/entity/hotel_entity.dart';

import 'media.dart';
import 'service.dart';

class Datum extends DetailsEntity {
  int? id;
  String? name;
  String? address;
  String? details;
  String? email;
  String? mobile;
  String? latLong;
  String? video;
  Media? media;
  List<Service>? services;

  Datum({
    this.id,
    this.name,
    this.address,
    this.details,
    this.email,
    this.mobile,
    this.latLong,
    this.video,
    this.media,
    this.services,
  }) : super(
            adders: address ?? "",
            namee: name ?? "",
            otherimage: media?.images ?? [],
            emai: email ?? "",
            latlong: latLong ?? "",
            des: details ?? "",
            ser: services ?? [],
            numberofimage: media?.additionalImageCount ?? 0,
            phonr: mobile ?? "",
            image: media?.images?[0].image ?? "",
            vido: video ?? "");

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['id'] as int?,
        name: json['name'] as String?,
        address: json['address'] as String?,
        details: json['details'] as String?,
        email: json['email'] as String?,
        mobile: json['mobile'] as String?,
        latLong: json['lat_long'] as String?,
        video: json['video'] as String?,
        media: json['media'] == null
            ? null
            : Media.fromJson(json['media'] as Map<String, dynamic>),
        services: (json['services'] as List<dynamic>?)
            ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'address': address,
        'details': details,
        'email': email,
        'mobile': mobile,
        'lat_long': latLong,
        'video': video,
        'media': media?.toJson(),
        'services': services?.map((e) => e.toJson()).toList(),
      };
}
