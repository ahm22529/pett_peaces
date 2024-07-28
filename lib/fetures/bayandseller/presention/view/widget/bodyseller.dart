import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/bayandseller/domain/entity/sel_entity.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/imageanmiles.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/informationanmiles.dart';

class BodySeller extends StatelessWidget {
  const BodySeller({
    super.key,
    required this.selEntity,
  });
  final SelEntity selEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: imageanmiles(
                  img: selEntity.anmilesEntity.imagee,
                ), // Assuming this widget fills available height
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: informatonanmiles(
                  anmilesEntity: selEntity,
                ),
              ),
            ],
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 60,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                ),
                color: Color(0xff000000).withOpacity(.1),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  selEntity.pricee.toString(),
                  style: AppStyles.styleRegular14(context).copyWith(
                    color: Color(0xffF78E32),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
