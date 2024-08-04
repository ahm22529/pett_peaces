import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/masssege/presention/view/widget/list_view_frined.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/continer_text_filed.dart';

class BodyMassege extends StatefulWidget {
  final ValueChanged<int> onItemSelected;
  final String token;
  final UserEntity userEntity;
  BodyMassege(
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
        const customAppbar(
          name: 'الرسايل',
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Continertextfiled(
            name: "ابحث عن شخص",
            textEditingController: TextEditingController(),
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
