import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/droptextfiled.dart';

Widget buildDropdownField(String label, List<String> options,
    Function(String?) onChanged, context, bool enabel) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: AppStyles.styleMedium16(context).copyWith(
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
      SizedBox(height: 16),
      DropdownField(
        options: options,
        controller: TextEditingController(),
        onChanged: onChanged,
      ),
      SizedBox(height: 16),
    ],
  );
}
