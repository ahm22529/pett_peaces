class Data {
  int? id;
  String? type;
  String? name;
  String? email;
  dynamic countryId;
  String? mobileCountryCode;
  String? mobile;
  String? image;
  bool? isPlanSubscribe;
  bool? emailVerifiedAt;
  String? token;

  Data({
    this.id,
    this.type,
    this.name,
    this.email,
    this.countryId,
    this.mobileCountryCode,
    this.mobile,
    this.image,
    this.isPlanSubscribe,
    this.emailVerifiedAt,
    this.token,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json['id'] as int?,
        type: json['type'] as String?,
        name: json['name'] as String?,
        email: json['email'] as String?,
        countryId: json['country_id'] as dynamic,
        mobileCountryCode: json['mobile_country_code'] as String?,
        mobile: json['mobile'] as String?,
        image: json['image'] as String?,
        isPlanSubscribe: json['is_plan_subscribe'] as bool?,
        emailVerifiedAt: json['email_verified_at'] as bool?,
        token: json['token'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'type': type,
        'name': name,
        'email': email,
        'country_id': countryId,
        'mobile_country_code': mobileCountryCode,
        'mobile': mobile,
        'image': image,
        'is_plan_subscribe': isPlanSubscribe,
        'email_verified_at': emailVerifiedAt,
        'token': token,
      };
}
