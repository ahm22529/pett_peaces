import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class AppbarExapmbe extends StatelessWidget {
  const AppbarExapmbe({
    super.key,
    required this.name,
    this.onPressed,
  });
  final String name;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Image.asset("Asset/image/Back.png")),
      title: name == ' الامثله والنصايح'
          ? Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: Text(
                name,
                style: AppStyles.stylesemi20(context)
                    .copyWith(color: Colors.black),
              ),
            )
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              decoration: BoxDecoration(
                  color: Color(0xffFFE2C9),
                  borderRadius: BorderRadius.circular(6)),
              child: Center(
                child: Text(
                  "#$name",
                  style: AppStyles.styleMedium16(context).copyWith(
                      color: Color(0xffF78E32),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
      trailing: IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.replay_outlined,
            color: Colors.orange,
            weight: 40,
          )),
    );
  }
}
