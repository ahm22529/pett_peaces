import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';

class buttomAccept extends StatelessWidget {
  const buttomAccept({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Custombuttom(
          titel: 'إرسال',
          onPressed: () {},
        ),
      ],
    );
  }
}
