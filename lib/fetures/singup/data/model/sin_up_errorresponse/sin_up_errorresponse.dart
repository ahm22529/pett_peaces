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
        return ServFailure("انتهت مهلة الاتصال");
      case DioErrorType.sendTimeout:
        return ServFailure("انتهت مهلة الإرسال");
      case DioErrorType.receiveTimeout:
        return ServFailure("انتهت مهلة الاستقبال");
      case DioErrorType.badCertificate:
        return ServFailure("شهادة غير صالحة");
      case DioErrorType.badResponse:
        return ServFailure.fromresp(
            dio.response!.statusCode!, dio.response!.data);
      case DioErrorType.cancel:
        return ServFailure("تم إلغاء الطلب");
      case DioErrorType.connectionError:
        return ServFailure("فشل في الاتصال");
      default:
        return ServFailure("فشل في الاتصال");
    }
  }

  factory ServFailure.fromresp(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServFailure("تحقق من البريد الإلكتروني وكلمة المرور");
    } else if (statusCode == 404) {
      return ServFailure("المورد غير موجود");
    } else if (statusCode == 500) {
      return ServFailure("خطأ في اتصال الخادم");
    } else if (statusCode == 422) {
      String errorMsg = "أدخل البيانات بشكل صحيح";
      if (response is Map<String, dynamic> && response['errors'] != null) {
        Map<String, dynamic> errors = response['errors'];
        if (errors.containsKey('mobile')) {
          errorMsg = "رقم الهاتف مُستخدم بالفعل";
        } else if (errors.containsKey('email')) {
          errorMsg = "البريد الإلكتروني مُستخدم بالفعل";
        }
      }
      return ServFailure(errorMsg);
    } else {
      return ServFailure("حاول مرة أخرى");
    }
  }
}
