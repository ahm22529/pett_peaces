import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/iteamstore.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/detailes.dart';

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
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: AspectRatio(
                      aspectRatio: 3.5 / 5,
                      child: IteamStore(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => DetailesView())),
                      )),
                )));
  }
}
