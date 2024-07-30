import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/box/domain/entity/iteam_entity.dart';

import 'package:pett_peaces/fetures/box/presention/view/widgwt/iteambox.dart';

import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class listiteamorder extends StatefulWidget {
  const listiteamorder(
      {Key? key, required this.iteam, required this.userEntitymodel});
  final List<IteamEntity> iteam;
  final UserEntitymodel userEntitymodel;

  @override
  State<listiteamorder> createState() => _listiteamorderState();
}

class _listiteamorderState extends State<listiteamorder> {
  late List<IteamEntity> iteam;

  @override
  void initState() {
    super.initState();
    iteam = widget.iteam;
  }

  void _removeItem(ProducEntity producEntity) {
    setState(() {
      iteam.removeWhere((item) => item.products.id == producEntity.id);
    });
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
              onRemoveItem: _removeItem,
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
