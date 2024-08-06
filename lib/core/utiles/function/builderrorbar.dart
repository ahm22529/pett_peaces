import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

void buildErrorBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: AppStyles.styleRegular14(context).copyWith(color: Colors.white),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
      backgroundColor: Colors.green,
    ),
  );
}

void buildSucessbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: AppStyles.styleRegular14(context).copyWith(color: Colors.white),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
      backgroundColor: Colors.red,
    ),
  );
}
