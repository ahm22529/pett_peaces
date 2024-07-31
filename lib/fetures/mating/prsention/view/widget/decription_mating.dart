import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/show_Image.dart';
import 'package:pett_peaces/fetures/mating/domain/entity/all_mating_entity.dart';

class DecriptionMating extends StatelessWidget {
  const DecriptionMating({
    super.key,
    required this.anmilesEntity,
  });
  final AllMatingEntity anmilesEntity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "الوصف",
            style: AppStyles.styleMedium18(context),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            anmilesEntity.anmilesEntity.des,
            style: AppStyles.styleRegular14(context)
                .copyWith(color: const Color(0xff333333)),
          ),
          const SizedBox(
            height: 16,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "صور إضافية (24)",
            style: AppStyles.styleMedium18(context).copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          IconButton(
              onPressed: () {
                print(anmilesEntity.anmilesEntity.otherimage[0]);
              },
              icon: const Icon(Icons.abc)),
          ShowImage(
            hotelEntity: [],
          ),
          const SizedBox(
            height: 16,
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
