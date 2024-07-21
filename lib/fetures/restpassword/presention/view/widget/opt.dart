import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class opt extends StatelessWidget {
  const opt({
    super.key,
    required this.onSubmit,
  });
  final void Function(String)? onSubmit;

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      focusedBorderColor: const Color(0xFFF78E32),
      numberOfFields: 4,
      borderColor: const Color(0xFFF78E32),
      //set to true to show as box or false to show as dash
      showFieldAsBox: true,
      //runs when a code is typed in
      onCodeChanged: (String code) {
        //handle validation or checks here
      },
      //runs when every textfield is filled
      onSubmit: onSubmit, // end onSubmit
    );
  }
}
