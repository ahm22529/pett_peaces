import 'package:pett_peaces/fetures/restpassword/data/model/check_response_model.dart';
import 'package:pett_peaces/fetures/restpassword/domain/entity/checkentity.dart';

class Checkdata extends Checkentity {
  Checkdata({required super.massage});

  factory Checkdata.fromapi(data) {
    return Checkdata(massage: data.message ?? "");
  }
}
