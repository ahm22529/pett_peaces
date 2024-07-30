import 'package:flutter/material.dart';

import 'package:pett_peaces/fetures/box/presention/view/widgwt/pricesname.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class IteamBox extends StatefulWidget {
  final ProducEntity producEntity;
  final UserEntitymodel userEntitymodel;
  final int count;
  final void Function(ProducEntity) onRemoveItem;
  const IteamBox(
      {super.key,
      required this.producEntity,
      required this.userEntitymodel,
      required this.onRemoveItem, required this.count});
  @override
  State<IteamBox> createState() => _IteamBoxState();
}

class _IteamBoxState extends State<IteamBox> {
  int numberofiteam = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .12,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 17.0, vertical: 14),
              child: Image.network(widget.producEntity.img),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: pricevulemname(
              producEntity: widget.producEntity,
              userEntitymodel: widget.userEntitymodel,
              onRemoveItem: widget.onRemoveItem, count: widget.count,
            ),
          )
        ],
      ),
    );
  }
}
