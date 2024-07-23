class CheckoutResponse {
  final bool status;
  final int statusCode;
  final CheckoutData data;
  final String message;

  CheckoutResponse({
    required this.status,
    required this.statusCode,
    required this.data,
    required this.message,
  });

  factory CheckoutResponse.fromJson(Map<String, dynamic> json) {
    return CheckoutResponse(
      status: json['status'],
      statusCode: json['status_code'],
      data: CheckoutData.fromJson(json['data']),
      message: json['message'],
    );
  }
}

class CheckoutData {
  final String urlPayment;

  CheckoutData({required this.urlPayment});

  factory CheckoutData.fromJson(Map<String, dynamic> json) {
    return CheckoutData(
      urlPayment: json['url_payment'],
    );
  }
}
