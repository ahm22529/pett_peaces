import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/addanmiles.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/anmiles.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/myaccount.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/myaddacount.dart';

class anmileshome extends StatelessWidget {
  const anmileshome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        children: [
          Anmmalesme(),
          GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => Myaccountadd())),
              child: iteamadd())
        ],
      ),
    );
  }
}
