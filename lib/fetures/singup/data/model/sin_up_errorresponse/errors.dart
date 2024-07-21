class Errors {
  List<String>? email;
  List<String>? mobile;

  Errors({this.email, this.mobile});

  factory Errors.fromJson(Map<String, dynamic> json) => Errors(
        email: json['email'] as List<String>?,
        mobile: json['mobile'] as List<String>?,
      );

  Map<String, dynamic> toJson() => {
        'email': email,
        'mobile': mobile,
      };
}
