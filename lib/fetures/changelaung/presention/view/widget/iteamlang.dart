import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class IteamChange extends StatefulWidget {
  const IteamChange({
    Key? key,
    required this.img,
    required this.text,
    required this.isActive,
  }) : super(key: key);

  final String img, text;
  final bool isActive;

  @override
  State<IteamChange> createState() => _IteamChangeState();
}

class _IteamChangeState extends State<IteamChange> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: DottedBorder(
        dashPattern: [8, 4],
        color: widget.isActive ? const Color(0xffF78E32) : Colors.black,
        strokeWidth: 1,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.24, // Adjusted height
          padding: const EdgeInsets.symmetric(horizontal: 27.0, vertical: 10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(widget.img, height: 80), // Adjust image height as needed
                const SizedBox(height: 8),
                Text(
                  widget.text,
                  style: AppStyles.styleRegular16(context).copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


