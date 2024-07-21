import 'package:collection/collection.dart';
import 'package:pett_peaces/fetures/coteching/domain/entity/cotach_entity.dart';

class Datum extends CotachEntity {
  int? id;
  String? image;
  String? name;
  String? email;
  String? mobile;
  String? mobileCountryCode;
  bool? isAvailable;
  String? description;

  Datum({
    this.id,
    this.image,
    this.name,
    this.email,
    this.mobile,
    this.mobileCountryCode,
    this.isAvailable,
    this.description,
  }) : super(
            dec: description ?? "",
            namee: name ?? "",
            isavliabel: isAvailable ?? false,
            idd: id ?? 0,
            imagee: image ?? "",
            emaill: email ?? "");

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['id'] as int?,
        image: json['image'] as String?,
        name: json['name'] as String?,
        email: json['email'] as String?,
        mobile: json['mobile'] as String?,
        mobileCountryCode: json['mobile_country_code'] as String?,
        isAvailable: json['is_available'] as bool?,
        description: json['description'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'name': name,
        'email': email,
        'mobile': mobile,
        'mobile_country_code': mobileCountryCode,
        'is_available': isAvailable,
        'description': description,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Datum) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      image.hashCode ^
      name.hashCode ^
      email.hashCode ^
      mobile.hashCode ^
      mobileCountryCode.hashCode ^
      isAvailable.hashCode ^
      description.hashCode;
}
