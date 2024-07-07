import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/doctorimage.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/nameddocotorecontact.dart';

class SummaryDoctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        docotorimage(),
        SizedBox(
          width: 16,
        ),
        namedoctoreandcontact()
      ],
    );
  }
}
