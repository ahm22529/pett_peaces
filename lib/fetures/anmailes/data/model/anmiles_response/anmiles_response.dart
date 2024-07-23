import 'package:pett_peaces/fetures/anmailes/domin/enitiy/anmiles_det.dart';

import 'data.dart';

class AnmilesResponse extends ListAnmileEntity {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  AnmilesResponse({this.status, this.statusCode, this.data, this.message})
      : super(
            anmiles: data?.data ?? [],
            lastpage: data?.meta?.lastPage ?? 1,
            currentpage: data?.meta?.currentPage ?? 1);

  factory AnmilesResponse.fromJson(Map<String, dynamic> json) {
    return AnmilesResponse(
      status: json['status'] as bool?,
      statusCode: json['status_code'] as int?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'status': status,
        'status_code': statusCode,
        'data': data?.toJson(),
        'message': message,
      };
}
