import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/image_anmiles.dart';

import 'package:pett_peaces/fetures/mating/domain/entity/all_mating_entity.dart';

import 'package:pett_peaces/fetures/mating/prsention/view/widget/information_Anmiles_mating.dart';

class BodyAllMatingAnmiles extends StatelessWidget {
  const BodyAllMatingAnmiles({
    super.key,
    required this.selEntity,
    required this.img,
  });
  final AllMatingEntity selEntity;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Imageanmiles(
                  img: selEntity.anmilesEntity.imagee,
                ), // Assuming this widget fills available height
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InformationAnmilesMating(
                    anmilesEntity: selEntity.anmilesEntity),
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
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                ),
                color: const Color(0xff000000).withOpacity(.1),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  selEntity.anmilesEntity.des,
                  style: AppStyles.styleRegular14(context).copyWith(
                    color: const Color(0xffF78E32),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              left: 0,
              top: 0,
              child: Visibility(
                visible: selEntity.isactive,
                child: IconButton(
                    onPressed: () {},
                    icon: Image.asset("Asset/image/delet.png")),
              ))
        ],
      ),
    );
  }
}
