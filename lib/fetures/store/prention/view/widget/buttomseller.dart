import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/box/presention/view/box.dart';

class buttomsell extends StatelessWidget {
  const buttomsell({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white, // ظلل رمادي اللون
            spreadRadius: 16,
            blurRadius: 7,
            offset: Offset(0, 3), // تحديد اتجاه الظل
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Custombuttom(
              titel: 'شراء (250\$)',
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (builder) => Box()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
