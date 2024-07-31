import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/anmailes/domin/enitiy/anmiles_det.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/butom.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/iteam_listview.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/myaccount.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Anmmalesmeacc extends StatelessWidget {
  const Anmmalesmeacc(
      {super.key,
      required this.listAnmileEntity,
      required this.userEntitymodel});
  final ListAnmileEntity listAnmileEntity;
  final UserEntitymodel userEntitymodel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listAnmileEntity.anmiles.length,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Iteamlistviewami(
                widget: Buttomanmandmating(
                  text: 'تعديل البيانات',
                  image: "Asset/image/edit-rectangle.png",
                  color: Color(0xff9C4900),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => Myaccount(
                                anmilesEntity: listAnmileEntity.anmiles[index],
                                userEntitymodel: userEntitymodel,
                              ))),
                ),
                animel: listAnmileEntity.anmiles[index],
              ),
            ));
  }
}
