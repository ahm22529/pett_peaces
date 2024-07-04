import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/iteamstore.dart';

class gridviewstore extends StatelessWidget {
  const gridviewstore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * .31,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: IteamStore(),
                )));
  }
}
