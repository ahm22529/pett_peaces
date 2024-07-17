class LogindataModel {
  final String email, password, fcm_token;

  LogindataModel(
      {required this.email, required this.password, required this.fcm_token});

  Map<String, dynamic> toJson() {
    return {'email': email, 'password': password, 'fcm_token': "wq"};
  }
}
