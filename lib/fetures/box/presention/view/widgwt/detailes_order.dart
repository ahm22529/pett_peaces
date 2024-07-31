import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/function/buildrow.dart';
import 'package:pett_peaces/fetures/box/data/model/infodetailesModel.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/cobon_iteam.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Detailesorder
 extends StatefulWidget {
  const Detailesorder({
    super.key,
    required this.count,
    required this.total,
    required this.taxpr,
    required this.userEntitymodel,
  });
  final String count, total, taxpr;
  final UserEntitymodel userEntitymodel;
  @override
  State<Detailesorder> createState() => _DetailesorderState();
}

class _DetailesorderState extends State<Detailesorder> {
  late List<Detailsmodel> lis;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    lis = [
      Detailsmodel(
        color1: const Color(0xff00070D),
        text1: "${widget.count} منتجات",
        text2: "عدد المنتجات",
        color2: const Color(0xff545454),
        fontWeight: FontWeight.w500,
      ),
      Detailsmodel(
        color1: const Color(0xff00070D),
        text1: widget.taxpr,
        text2: "خدمة توصيل",
        color2: const Color(0xff545454),
        fontWeight: FontWeight.w500,
      ),
      Detailsmodel(
        color1: const Color(0xff00070D),
        text1: "${widget.total}",
        text2: "سعر المنتجات",
        color2: const Color(0xff545454),
        fontWeight: FontWeight.w500,
      ),
      Detailsmodel(
        text1: "${widget.total}",
        text2: "السعر النهائي",
        color1: const Color(0xff00070D),
        color2: Colors.black,
        fontWeight: FontWeight.w600,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          const BoxShadow(
            color: Color(0x40000000), // Color #000000 with 25% opacity
            blurRadius: 8,
            spreadRadius: 1,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            cobeniteam(
              userEntitymodel: widget.userEntitymodel,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: lis.length,
              itemBuilder: (context, index) {
                if (index == lis.length - 1) {
                  return Column(
                    children: [
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 9.0),
                        child: buildRow(
                          lis[index].text1,
                          lis[index].text2,
                          lis[index].fontWeight,
                          lis[index].color1,
                          lis[index].color2,
                        ),
                      ),
                    ],
                  );
                } else {
                  return buildRow(
                    lis[index].text1,
                    lis[index].text2,
                    lis[index].fontWeight,
                    lis[index].color1,
                    lis[index].color2,
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
