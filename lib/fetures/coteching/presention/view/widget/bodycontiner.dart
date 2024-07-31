import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/coteching/domain/entity/cotach_entity.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/buttomcotchingacount.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/namedandstuts.dart';

class BodyCotactcoting extends StatelessWidget {
  final CotachEntity cotachEntity;

  BodyCotactcoting({super.key, required this.cotachEntity});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .07,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: customAppbar(
                name: 'تفاصيل المدرب',
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Image.network(cotachEntity.imagee),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Nameandstuts(
                cotachEntity: cotachEntity,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: HtmlWidget(
                cotachEntity.dec,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            // ,Adds space between the text and the button
            Visibility(
                visible: !cotachEntity.isavliabel,
                child: const Buttomcountactcotch()),
            const SizedBox(
                height: 16), // Add some space at the bottom if needed
          ],
        ),
      ),
    );
  }
}
