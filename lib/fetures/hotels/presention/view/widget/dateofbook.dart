import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/datepicker.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/datepickertextfiled.dart';

class dateofbook extends StatelessWidget {
  const dateofbook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: datepic(
            widget: DatePickerField(
              controller: TextEditingController(),
              Imag: 'Asset/image/calendar add.png',
            ),
            text: 'تاريخ الحجز من',
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: datepic(
            widget: DatePickerField(
              controller: TextEditingController(),
              Imag: 'Asset/image/calendar add.png',
            ),
            text: '  إلي',
          ),
        ),
      ],
    );
  }
}