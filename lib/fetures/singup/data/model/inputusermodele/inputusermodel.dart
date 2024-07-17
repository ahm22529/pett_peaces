class Singupusermodel {
  final String name;
  final String phone;
  final String email;
  final String password;
  final String comfrimpassword;
  final String fcm_token;

  final String mobile_country_code;

  Singupusermodel({
    required this.mobile_country_code,
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
    required this.comfrimpassword,
    required this.fcm_token,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'mobile': phone,
      'email': email,
      'password': password,
      'password_confirmation': comfrimpassword,
      'fcm_token': fcm_token,
      'mobile_country_code': mobile_country_code
    };
  }
}
