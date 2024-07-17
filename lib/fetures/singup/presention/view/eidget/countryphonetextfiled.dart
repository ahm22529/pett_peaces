import 'package:flutter/material.dart';
import 'package:country_code_text_field/country_code_text_field.dart';

class CountryPhoneTextfiled extends StatelessWidget {
  const CountryPhoneTextfiled({
    super.key,
    this.initialCountryCode,
    this.text,
  });
  final String? text;
  final String? initialCountryCode;

  @override
  Widget build(BuildContext context) {
    return CountryCodeTextField(
      initialCountryCode: 'EG', // تعيين الكود الابتدائي لمصر
      initialValue: text,
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
      validator: (value) {
        if (value == null) {
          return 'هذا الرقم غير صحيح';
        }
        // يمكنك إضافة تحقق إضافي هنا إذا لزم الأمر
        return null;
      },
    );
  }
}
