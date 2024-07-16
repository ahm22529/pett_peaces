import 'package:dio/dio.dart';

class Requestservices {
  String baseurl = "";
  final Dio dio;

  Requestservices(this.dio);

  Future<dynamic> post(data, String endPoint, token, cotanttype) async {
    try {
      var s = token;
      Map<String, dynamic> headers = {
        'Authorization': 'Bearer $s',
        'Content-Type': cotanttype, // Depending on your API requirements
      };
      var re = await dio.post("$baseurl$endPoint",
          data: data,
          options: Options(
            headers: headers,
          ));
      print('sssca${re.statusCode}');
      return re.data;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> getReqest(String? cid,
      {required String endPoint, required String? token}) async {
    var s = token;
    Map<String, dynamic> headers = {
      'Authorization': 'Bearer $s',
      'Content-Type': 'application/json', // Depending on your API requirements
    };

    var re = await dio.get('$baseurl$endPoint$cid',
        options: Options(
          headers: headers,
        ));
    print('get ${re.statusCode}');
    return re.data;
  }
}