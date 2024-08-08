import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/masssege/presention/view/widget/appbar_massage.dart';
import 'package:pett_peaces/fetures/masssege/presention/view/widget/list_view_frined.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class BodyMassege extends StatefulWidget {
  final ValueChanged<int> onItemSelected;
  final String token;
  final UserEntity userEntity;
  const BodyMassege(
      {required this.onItemSelected,
      required this.token,
      required this.userEntity});

  @override
  State<BodyMassege> createState() => _BodyMassegeState();
}

class _BodyMassegeState extends State<BodyMassege> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 73,
        ),
        const CustomAppbar(
          name: 'الرسايل',
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SearchUser(
            name: "ابحث عن المستخدمين ",
            userEntitymodel: widget.userEntity,
          ),
        ),
        ListviewFrined(
          widget: widget,
          token: widget.token,
          userEntity: widget.userEntity,
        ),
      ],
    );
  }
}
