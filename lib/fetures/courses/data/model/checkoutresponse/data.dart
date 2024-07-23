import 'package:pett_peaces/fetures/courses/domain/entity/checkout_enity.dart';

class Data extends payoutEnity{
  String? urlPayment;

  Data({this.urlPayment}):super(url: urlPayment??"");

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        urlPayment: json['url_payment'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'url_payment': urlPayment,
      };
}
