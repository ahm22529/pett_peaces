class Updatedatapassword {
  final String email, opt, pass, comfrimpass;

  Updatedatapassword({required this.email, required this.opt, required this.pass, required this.comfrimpass});

  Map<String, dynamic> toJson() {
    return {
      
      'email': email,
      'password': pass,
      'password_confirmation': comfrimpass,
      
      'otp': opt
    };
  }
}
