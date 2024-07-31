import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/bayandseller/domain/entity/sel_entity.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/descriptio.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/info_detailes.dart';

class Bodysellerandbuyerdetails extends StatelessWidget {
  final SelEntity selEntity;

  const Bodysellerandbuyerdetails({super.key, required this.selEntity});
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
              Description(
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
            child: Infoa(
              anmilesEntity: selEntity.anmilesEntity,
            ),
          ),
        ],
      ),
    );
  }
}
