import 'package:flutter/cupertino.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/entity/exambel_details_enity.dart';

class imageconter extends StatelessWidget {
  const imageconter({
    super.key,
    required this.examel,
  });
  final ExambelEnitydetails examel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .3,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(examel.imagee), // Replace with your image asset
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
