import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/descriptio.dart';

class CourseseEntity {
  final String nameof;
  final String type;
  final String imag;
  final String priceof;
  final String videoo;
  final String startdate;
  final String? locatione; // تغيير هنا
  final List otherimg;
  final int day;
  final int idd;
  final String? des;
  final bool isactive;

  CourseseEntity({
    required this.des,
    required this.nameof,
    this.locatione, // تعديل هنا ليصبح nullable
    required this.day,
    required this.idd,
    required this.isactive,
    required this.type,
    required this.priceof,
    required this.imag,
    required this.otherimg,
    required this.startdate,
    required this.videoo,
  });
}
