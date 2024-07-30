import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/iteamstore.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/detailes.dart';

class gridviewstore extends StatelessWidget {
  const gridviewstore({
    super.key,
    required this.producEntity,
    required this.userEntitymodel,
  });
  final List producEntity;
  final UserEntitymodel userEntitymodel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * .31,
        child: ListView.builder(
            itemCount: producEntity.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: AspectRatio(
                      aspectRatio: 3.5 / 5,
                      child: IteamStore(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => DetailesView(
                                      userEntitymode: userEntitymodel,
                                      producEntity: producEntity[index],
                                    ))),
                        producEntity: producEntity[index],
                        userEntitymodel: userEntitymodel,
                      )),
                )));
  }
}
