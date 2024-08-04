import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/chat_details.dart';
import 'package:pett_peaces/fetures/masssege/presention/view/widget/body_masssage.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Tabletmassui extends StatefulWidget {
  final String token;
  final UserEntity userEntity;
  const Tabletmassui(
      {super.key, required this.token, required this.userEntity});
  @override
  _TabletmassuiState createState() => _TabletmassuiState();
}

class _TabletmassuiState extends State<Tabletmassui> {
  int? selectedIndex;

  _TabletmassuiState();
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
            token: widget.token,
            userEntity: widget.userEntity,
          ),
        ),
        Expanded(
          flex: 5,
          child: selectedIndex != null
              ? Chatdetails(
                  Userid: 1,
                  name: '',
                  image: '',
                  token: '',
                  chanel: '',
                  chatid: '',
                  userid: '',
                  token5: '',
                  userEntity: widget.userEntity,
                )
              : Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "Asset/image/message sign.png",
                        height: 200,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "فريقPetty Peace يتمني لك تجربه سعيده",
                        style: AppStyles.styleRegular24(context)
                            .copyWith(color: Colors.orange, fontSize: 32),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        " احصل ع الاستشاره الكامله من دكاتره متميزين ",
                        style: AppStyles.styleMedium18(context),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "اختر شاتك ",
                        style: AppStyles.styleMedium18(context),
                      )
                    ],
                  ),
                ),
        ),
      ],
    );
  }
}
