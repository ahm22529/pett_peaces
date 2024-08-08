import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/info_anmiles.dart';

class Anmmalesme extends StatelessWidget {
  const Anmmalesme({super.key, required this.anmilesEntity});
  final AnmilesEntity? anmilesEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.center,
          image: AssetImage(
              "Asset/image/Frame 1000004356.png"), // Replace with your image asset
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Expanded(
                child: anmilesEntity?.imagee != null &&
                        anmilesEntity!.imagee.isNotEmpty
                    ? Image.network(
                        anmilesEntity!.imagee,
                        height: MediaQuery.of(context).size.height * .2,
                        fit: BoxFit.cover,
                        loadingBuilder: (BuildContext context, Widget child,
                            ImageChunkEvent? loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          } else {
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        (loadingProgress.expectedTotalBytes ??
                                            1)
                                    : null,
                              ),
                            );
                          }
                        },
                        errorBuilder: (BuildContext context, Object error,
                            StackTrace? stackTrace) {
                          return const Icon(
                              Icons.error); // Placeholder for error
                        },
                      )
                    : const Icon(Icons
                        .image_not_supported), // Placeholder for empty or null URL
              ),
              Expanded(
                child: informationanmiles(
                  animel: anmilesEntity,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class informationanmiles extends StatelessWidget {
  const informationanmiles({super.key, required this.animel});

  final AnmilesEntity? animel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: InfoAnmales(
              tt: animel?.namee ?? "",
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          InfoAnmales(
            tt: animel?.des ?? "",
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: InfoAnmales1(
                    tt: animel?.gendere ?? "",
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  flex: 1,
                  child: InfoAnmales1(
                    tt: animel?.agee.toString() ?? "",
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
