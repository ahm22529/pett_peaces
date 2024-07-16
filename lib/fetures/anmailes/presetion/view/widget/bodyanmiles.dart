import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/butom.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/iteam.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/myaccount.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/myaddacount.dart';

class BodyAnmiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Expanded(child: Anmmalesmeacc()),
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (builder) => Myaccountadd())),
            child: buttomanmandmating(
              color: Colors.orange,
              text: 'إضافة حيوان جديد',
              image: 'Asset/image/jjjdjd.png',
              onTap: () {
                 Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => Myaccountadd()));
              },
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
