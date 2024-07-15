import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/comfrimbook.dart';

class butomcomfrim extends StatelessWidget {
  const butomcomfrim({
    super.key,
    required this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
      child: Row(
        children: [
          Custombuttom(titel: "حجز", onPressed: onPressed),
        ],
      ),
    );
  }
}
