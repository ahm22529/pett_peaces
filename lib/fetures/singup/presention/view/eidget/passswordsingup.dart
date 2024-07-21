import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordFieldvaild extends StatefulWidget {
  const PasswordFieldvaild({
    super.key,
    this.controller,
    this.isConfirm = false,
    this.passwordController,
    required this.onSaved,
  });

  final TextEditingController? controller;
  final bool isConfirm;
  final TextEditingController? passwordController;
  final void Function(String?)? onSaved;

  @override
  _PasswordFieldvaildState createState() => _PasswordFieldvaildState();
}

class _PasswordFieldvaildState extends State<PasswordFieldvaild> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onSaved,
      controller: widget.controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (v) {
        if (v!.isEmpty) {
          return "هذا الحقل مطلوب";
        }
        if (widget.isConfirm && v != widget.passwordController!.text) {
          return "كلمات المرور غير متطابقة";
        }
        bool hasUppercase = v.contains(RegExp(r'[A-Z]'));
        bool hasLowercase = v.contains(RegExp(r'[a-z]'));
        if (!hasUppercase || !hasLowercase) {
          return "يجب أن تحتوي كلمة المرور على حرف كبير وحرف صغير";
        }
        return null;
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
            child: Image.asset(
              _obscureText
                  ? "Asset/image/eye disable.png"
                  : "Asset/image/eye disable.png", // Change the icon based on the state
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
