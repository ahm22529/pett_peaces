import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/coteching/domain/entity/cotach_entity.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/availael.dart';

class doctorestatus extends StatelessWidget {
  const doctorestatus({
    super.key,
    required this.cotachEntity,
  });
  final CotachEntity cotachEntity;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(color: Color(0xff22222222).withOpacity(.5)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cotachEntity.namee,
                style: AppStyles.styleRegular14(context),
              ),
              avalibal(
                cotachEntity: cotachEntity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
