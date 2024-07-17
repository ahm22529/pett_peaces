class CheckResponseModel {
  bool? status;
  int? statusCode;
  dynamic data;
  String? message;

  CheckResponseModel({
    this.status,
    this.statusCode,
    this.data,
    this.message,
  });

  factory CheckResponseModel.fromJson(Map<String, dynamic> json) {
    return CheckResponseModel(
      status: json['status'] as bool?,
      statusCode: json['status_code'] as int?,
      data: json['data'] as dynamic,
      message: json['message'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'status': status,
        'status_code': statusCode,
        'data': data,
        'message': message,
      };
}
