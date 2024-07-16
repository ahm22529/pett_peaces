import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/function/buildrow.dart';
import 'package:pett_peaces/fetures/box/data/infodetailesModel.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/coboniteam.dart';

class detailesorder extends StatelessWidget {
  const detailesorder({
    super.key,
    required this.lis,
  });

  final List<Detailsmodel> lis;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
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
            cobeniteam(),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: lis.length,
              itemBuilder: (context, index) {
                if (index == lis.length - 1) {
                  return Column(
                    children: [
                      Divider(),
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
