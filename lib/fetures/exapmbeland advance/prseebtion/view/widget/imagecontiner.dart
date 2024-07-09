import 'package:flutter/cupertino.dart';

class imageconter extends StatelessWidget {
  const imageconter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .25,
      decoration: const BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(
              "Asset/image/hhhhhhh.png"), // Replace with your image asset
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
