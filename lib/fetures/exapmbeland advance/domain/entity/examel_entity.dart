import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/entity/exambel_details_enity.dart';

class ExamelEntity {
  final List<ExambelEnitydetails> examel;
  final int lastpage;
  final String nextpageurl;

  ExamelEntity(
      {required this.examel,
      required this.lastpage,
      required this.nextpageurl});
}
