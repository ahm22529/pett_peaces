import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/bodyofprofileadvace.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/listviewadvance.dart';

class Hastag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset("Asset/image/Back.png"),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xffFFE2C9),
                borderRadius: BorderRadius.circular(6)
              ),
              child: Text("طعام",style: AppStyles.styleMedium16(context).copyWith(color: Color(0xffF78E32),fontSize: 16,fontWeight: FontWeight.w600),),
            )
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          
          const SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 24,
                ),
               
        ]),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          ListViewAdvanced(),
        ],
      ),
    );
  }
}
