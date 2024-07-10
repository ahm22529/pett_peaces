import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class iteamchange extends StatefulWidget {
  const iteamchange({
    Key? key,
    required this.img,
    required this.text,
    required this.isactive,
  }) : super(key: key);

  final String img, text;
  final bool isactive;

  @override
  State<iteamchange> createState() => _iteamchangeState();
}

class _iteamchangeState extends State<iteamchange> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: DottedBorder(
        dashPattern: [8, 4],
        color: widget.isactive ? const Color(0xffF78E32) : Colors.black,
        strokeWidth: 1,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.24, // Adjusted height
          padding: const EdgeInsets.symmetric(horizontal: 27.0, vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(widget.img,
                  height: 80), // Adjust image height as needed
              const SizedBox(height: 8),
              Text(
                widget.text,
                style: AppStyles.styleRegular16(context)
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
