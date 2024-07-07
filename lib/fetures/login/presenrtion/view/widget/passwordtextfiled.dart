import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PasswordFiled extends StatelessWidget {
  const PasswordFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: const textfiledinput(),
    );
  }
}

// ignore: camel_case_types
class textfiledinput extends StatefulWidget {
  const textfiledinput({
    super.key,
  });

  @override
  State<textfiledinput> createState() => _textfiledinputState();
}

class _textfiledinputState extends State<textfiledinput> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (v) {
        if (v!.isEmpty) {
          return "هذا الحقل مطلوب";
        }
      },
      obscureText: show,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
            onTap: () => setState(() {
                  show = true;
                }),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset("Asset/image/eye disable.svg"),
            )),
        fillColor: const Color(0xffFFFFFF),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: const Color(0xff000000).withOpacity(.25),
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: const Color(0xff000000).withOpacity(.25),
            width: 1.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.red.withOpacity(.5),
            width: 1.0,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.red.withOpacity(.5),
            width: 1.0,
          ),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
    );
  }
}
