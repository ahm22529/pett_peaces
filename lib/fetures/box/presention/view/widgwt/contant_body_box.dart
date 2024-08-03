import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/box/domain/entity/box_entity.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/custom_buttom_box.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/detailes_order.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/listtitel_order.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class ContantBodyBox extends StatefulWidget {
  final UserEntitymodel userEntitymodel;
  final BoxEntity boxEntity;

  const ContantBodyBox(
      {super.key, required this.userEntitymodel, required this.boxEntity});
  @override
  State<ContantBodyBox> createState() => _ContantBodyBoxState();
}

class _ContantBodyBoxState extends State<ContantBodyBox> {
  late List peoduct;
  void initState() {
    super.initState();
    peoduct = widget.boxEntity.product;
  }

  void _removeItem(ProducEntity producEntity) {
    setState(() {
      peoduct.removeWhere((item) => item.products.id == producEntity.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (peoduct.isEmpty) {
      return Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("Asset/image/Natural farm products in a kraft bag.png"),
            //, ignore: prefer_const_constructors
            SizedBox(
              height: 15,
            ),
            Text(
              "السله فارغه",
              style: AppStyles.styleRegular24(context),
            ),
          ],
        ),
      );
    }
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Listiteamorder(
              iteam: peoduct,
              userEntitymodel: widget.userEntitymodel,
              onRemoveItem: _removeItem,
            ),
            Divider(height: 48, color: Color(0xffD9D9D9)),
            Detailesorder(
              count: widget.boxEntity.product.length.toString(),
              total: widget.boxEntity.total.toString(),
              taxpr: widget.boxEntity.dis.toString(),
              userEntitymodel: widget.userEntitymodel,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "اذا تم دفع ببطاقه الامتنان سوف يتم خصم 2% كضريبه اضافيه",
                  style: AppStyles.styleRegular14(context)
                      .copyWith(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BotttomPay(
              userEntitymodel: widget.userEntitymodel,
            )
          ],
        ),
      ),
    );
  }
}
