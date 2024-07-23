import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer({
    super.key,
    required this.titel,
    required this.onPressed,
  });
  final String titel;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xffFFE2C9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3),
      ),
      child: Text(
        titel,
        style: AppStyles.styleMedium12(context)
            .copyWith(color: const Color(0xffF78E32)),
      ),
    );
  }
}
