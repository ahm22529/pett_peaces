import 'package:dio/dio.dart';

abstract class Failure {
  final String errmas;
  Failure(this.errmas);
}

class ServFailure extends Failure {
  ServFailure(String errmas) : super(errmas);

  factory ServFailure.formdioerr(DioError dio) {
    switch (dio.type) {
      case DioErrorType.connectionTimeout:
        return ServFailure("connectionTimeout");
      case DioErrorType.sendTimeout:
        return ServFailure("send time out");
      case DioErrorType.receiveTimeout:
        return ServFailure("receive time out");
      case DioErrorType.badCertificate:
        return ServFailure("badCertificate");
      case DioErrorType.badResponse:
        // Handle bad response here
        return ServFailure.fromresp(
            dio.response!.statusCode!, dio.response!.data);
      case DioErrorType.cancel:
        return ServFailure("cancel");
      case DioErrorType.connectionError:
        return ServFailure("connection failure");
      default:
        return ServFailure("connection failure");
    }
  }

  factory ServFailure.fromresp(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServFailure("الرجاء التحقق من البريد الإلكتروني وكلمة المرور");
    } else if (statusCode == 404) {
      return ServFailure("المورد غير موجود");
    } else if (statusCode == 500) {
      return ServFailure("خطأ في اتصال الخادم");
    } else if (statusCode == 400) {
      return ServFailure("   بيانات الاعتماد غير صحيحه");
    } else if (statusCode == 422) {
      String errorMessage = "ادخل البيانات بشكل صحيح";

      return ServFailure(errorMessage);
    } else {
      return ServFailure("حاول مرة أخرى");
    }
  }
}
