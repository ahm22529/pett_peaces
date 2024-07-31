import 'package:flutter/material.dart';


class Textformfiledemail extends StatelessWidget {
  const Textformfiledemail({
    super.key,
    this.maxline,
    this.initialValue,
    required this.onSaved, // Added initialValue
  });
  final int? maxline;
  final String? initialValue; // Added initialValue
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onSaved,
      initialValue: initialValue, // Set initialValue here
      maxLines: maxline,
      validator: (v) {
        if (v!.isEmpty) {
          return "هذا الحقل مطلوب";
        }
        // Regular expression for validating an email
        bool emailValid = RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(v);
        if (!emailValid) {
          return "من فضلك ادخل بريد الكتروني صحيح";
        }
        return null; // Ensure a null return when the input is valid
      },
      decoration: InputDecoration(
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
