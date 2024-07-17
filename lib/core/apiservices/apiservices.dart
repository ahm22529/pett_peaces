import 'package:dio/dio.dart';

class RequestServices {
  String baseUrl = "https://animals.codeella.com/api/";
  final Dio dio;

  RequestServices(this.dio);

  Future<dynamic> post(
      data, String endPoint, String? token, String? contentType) async {
    try {
      var s = token;
      Map<String, dynamic> headers = {
        'Authorization': 'Bearer $s',
        'Accept': "application/json",
        'type': 'android', // تعديل هنا على نوع الجهاز
        'x-version': '1',
        'x-lang': 'ar',
      };

      var re = await dio.post(
        "$baseUrl$endPoint",
        data: data,
        options: Options(
          followRedirects: true, // السماح بإعادة التوجيه تلقائيًا
          headers: headers,
        ),
      );

      return re.data;
    } on DioError catch (e) {
      if (e.response != null) {
        print('DioError: ${e.response?.statusCode}');
        print('Headers: ${e.response?.headers}');
        print('Data: ${e.response?.data}');
      } else {
        print('DioError: $e');
      }
      throw e;
    } catch (e) {
      print('استثناء أثناء إرسال الطلب: $e');
      throw e;
    }
  }

  Future<dynamic> getRequest(String? cid,
      {required String endPoint, required String? token}) async {
    try {
      var s = token;
      Map<String, dynamic> headers = {
        'Authorization': 'Bearer $s',
        'Content-Type': 'application/json',
      };

      var re = await dio.get(
        '$baseUrl$endPoint$cid',
        options: Options(
          headers: headers,
          followRedirects: true, // السماح بإعادة التوجيه تلقائيًا
        ),
      );

      print('get ${re.statusCode}');
      return re.data;
    } on DioError catch (e) {
      if (e.response != null) {
        print('DioError: ${e.response?.statusCode}');
        print('Headers: ${e.response?.headers}');
        print('Data: ${e.response?.data}');
      } else {
        print('DioError: $e');
      }
      throw e;
    } catch (e) {
      print('استثناء أثناء إرسال الطلب: $e');
      throw e;
    }
  }
}
