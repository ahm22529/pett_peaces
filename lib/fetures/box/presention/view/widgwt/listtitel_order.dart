import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/iteam_box.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Listiteamorder extends StatefulWidget {
  const Listiteamorder(
      {Key? key,
      required this.iteam,
      required this.userEntitymodel,
      required this.onRemoveItem});
  final List iteam;
  final UserEntitymodel userEntitymodel;
  final void Function(ProducEntity) onRemoveItem;

  @override
  State<Listiteamorder> createState() => _ListiteamorderState();
}

class _ListiteamorderState extends State<Listiteamorder> {
  late List iteam;

  @override
  void initState() {
    super.initState();
    iteam = widget.iteam;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: iteam.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            IteamBox(
              producEntity: widget.iteam[index].products,
              userEntitymodel: widget.userEntitymodel,
              onRemoveItem: widget.onRemoveItem,
              count: widget.iteam[index].qounte,
            ),
            if (index < iteam.length - 1)
              Divider(height: 25, color: Color(0xffD9D9D980).withOpacity(.5)),
          ],
        );
      },
    );
  }
}
