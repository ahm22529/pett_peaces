import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Image.asset("Asset/image/Back.png")),
      title: Padding(
        padding: const EdgeInsets.only(right: 40.0),
        child: Text(
          name,
          style: AppStyles.stylesemi20(context).copyWith(
              color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
