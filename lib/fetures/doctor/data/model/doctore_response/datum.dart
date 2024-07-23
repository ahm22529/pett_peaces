import 'package:pett_peaces/fetures/doctor/domain/entity/doctor-details_entity.dart';

class Datum extends DoctorEntitydetails {
  int? id;
  String? image;
  String? name;
  String? email;
  String? mobile;
  String? mobileCountryCode;
  String? location;
  String? specialty;
  String? description;

  Datum({
    this.id,
    this.image,
    this.name,
    this.email,
    this.mobile,
    this.mobileCountryCode,
    this.location,
    this.specialty,
    this.description,
  }) : super(
            adreess: location ?? "",
            idd: id ?? 0,
            imagee: image ?? "",
            namee: name ?? "",
            phone: mobile ?? "",
            specfication: specialty ?? "",
            dec: description ?? "");

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['id'] as int?,
        image: json['image'] as String?,
        name: json['name'] as String?,
        email: json['email'] as String?,
        mobile: json['mobile'] as String?,
        mobileCountryCode: json['mobile_country_code'] as String?,
        location: json['location'] as String?,
        specialty: json['specialty'] as String?,
        description: json['description'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'name': name,
        'email': email,
        'mobile': mobile,
        'mobile_country_code': mobileCountryCode,
        'location': location,
        'specialty': specialty,
        'description': description,
      };
}
