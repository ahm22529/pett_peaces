import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordFiled extends StatelessWidget {
  const PasswordFiled({super.key, required this.onSaved});
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return textfiledinput(
      onSaved: onSaved,
    );
  }
}

// ignore: camel_case_types
class textfiledinput extends StatefulWidget {
  const textfiledinput({super.key, required this.onSaved});
  final void Function(String?)? onSaved;
  @override
  State<textfiledinput> createState() => _textfiledinputState();
}

class _textfiledinputState extends State<textfiledinput> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: widget.onSaved,
      validator: (v) {
        if (v!.isEmpty) {
          return "هذا الحقل مطلوب";
        }
        return null; // Added to ensure it returns null when the input is valid
      },
      obscureText: _obscureText,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              _obscureText
                  ? "Asset/image/eye disable.svg"
                  : "Asset/image/eye enable.svg", // Change the icon based on the state
            ),
          ),
        ),
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
