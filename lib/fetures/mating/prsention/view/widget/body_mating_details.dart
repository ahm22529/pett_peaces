import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/infodetailes.dart';
import 'package:pett_peaces/fetures/mating/domain/entity/all_mating_entity.dart';
import 'package:pett_peaces/fetures/mating/prsention/view/widget/decription_mating.dart';
class BodyMatingDetails extends StatelessWidget {
  final AllMatingEntity selEntity;

  const BodyMatingDetails({super.key, required this.selEntity});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .45,
                child: Image.network(
                  selEntity.anmilesEntity.imagee,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              DecriptionMating(
                anmilesEntity: selEntity,
              ),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .01,
            right: 5,
            child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Image.asset("Asset/image/Back.png")),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .08,
            right: 5,
            child: infoa(
              anmilesEntity: selEntity.anmilesEntity,
            ),
          ),
        ],
      ),
    );
  }
}
