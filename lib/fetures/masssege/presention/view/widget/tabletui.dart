import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/chatdetails.dart';
import 'package:pett_peaces/fetures/masssege/presention/view/widget/bodymasssage.dart';

class Tabletmassui extends StatefulWidget {
  @override
  _TabletmassuiState createState() => _TabletmassuiState();
}

class _TabletmassuiState extends State<Tabletmassui> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: BodyMassege(
            onItemSelected: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ),
        Expanded(
          flex: 5,
          child: selectedIndex != null
              ? Chatdetails()
              : Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("Asset/image/message sign.png",height: 200,),
                    SizedBox(height: 30,),
                    Text("فريقPetty Peace يتمني لك تجربه سعيده",style: AppStyles.styleRegular24(context).copyWith(color: Colors.orange,fontSize: 32),)
                    ,
                    SizedBox(height: 10,),
                    Text(" احصل ع الاستشاره الكامله من دكاتره متميزين ",style:AppStyles.styleMedium18(context) ,),
                    SizedBox(height: 10,),
                    Text("اختر شاتك ",style:AppStyles.styleMedium18(context) ,)
                  ],
                ),
              ),
        ),
      ],
    );
  }
}