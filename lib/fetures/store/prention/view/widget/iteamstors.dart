import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class IteamStores extends StatelessWidget {
  const IteamStores({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black12, width: 1),
        ),
        child: const bodyiteamstore());
  }
}

// ignore: camel_case_types
class bodyiteamstore extends StatelessWidget {
  const bodyiteamstore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 5),
      child: Column(children: [
        const Text("طعام يوناني الاصل مستورد"),
        Image.asset("Asset/image/20802-removebg-preview 1.png"),
        Container(
          width: MediaQuery.of(context).size.width * .5,
          decoration: BoxDecoration(
            color: const Color(0xffF78E32).withOpacity(.3),
            borderRadius: BorderRadius.circular(9),
          ),
          child: infoiteamstore(),
        )
      ]),
    );
  }
}

class infoiteamstore extends StatelessWidget {
  const infoiteamstore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "299\$",
                style: AppStyles.styleMedium18(context).copyWith(
                    fontWeight: FontWeight.w800,
                    color: const Color(0xffF78E32)),
              ),
              Text(
                "120",
                style: AppStyles.styleMedium18(context).copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 12),
              )
            ],
          ),
          Image.asset("Asset/image/add.png")
        ],
      ),
    );
  }
}
