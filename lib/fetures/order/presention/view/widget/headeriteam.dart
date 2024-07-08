import 'package:flutter/material.dart';

class headeriteam extends StatelessWidget {
  const headeriteam({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      RichText(
        text: const TextSpan(
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
          children: [
            TextSpan(
              text: 'رقم الطلب: ',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: '#12528290344ogd',
              style: TextStyle(
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
      Image.asset("Asset/image/delet.png")
    ]);
  }
}
