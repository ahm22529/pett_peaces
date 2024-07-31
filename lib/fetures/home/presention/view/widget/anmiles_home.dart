import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/add_anmiles.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/anmiles.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/myaccount.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/myaddacount.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class anmileshome extends StatelessWidget {
  const anmileshome({
    super.key,
    required this.anmiles,
    required this.userEntitymodel,
  });
  final UserEntitymodel userEntitymodel;
  final AnmilesEntity anmiles;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 9,
          child: SizedBox(
            child: Anmmalesme(
              anmilesEntity: anmiles,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => MyAccountAdd(
                            userEntitymodel: userEntitymodel,
                          ))),
              child: iteamadd()),
        )
      ],
    );
  }
}
