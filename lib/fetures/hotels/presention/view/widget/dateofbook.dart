import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/datepicker.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/datepickertextfiled.dart';

class Dateofbook extends StatefulWidget {
  const Dateofbook({
    super.key,
    required this.textEditingController1,
    required this.textEditingController2,
    this.onTap1,
    this.onTap2,
  });
  final TextEditingController textEditingController1, textEditingController2;
  final void Function()? onTap1;
  final void Function()? onTap2;

  @override
  State<Dateofbook> createState() => _DateofbookState();
}

class _DateofbookState extends State<Dateofbook> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: datepic(
            widget: DatePickerField(
              controller: widget.textEditingController2,
              Imag: 'Asset/image/calendar add.png',
              onTap: widget.onTap1,
            ),
            text: 'تاريخ الحجز من',
          ),
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: datepic(
            widget: DatePickerField(
              controller: widget.textEditingController1,
              Imag: 'Asset/image/calendar add.png',
              onTap: widget.onTap2,
            ),
            text: '  إلي',
          ),
        ),
      ],
    );
  }
}
