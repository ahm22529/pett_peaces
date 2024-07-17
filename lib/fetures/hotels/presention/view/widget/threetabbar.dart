import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/image.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/tabbar.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/googelmaps.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/emailandphone.dart';

class ThreeTabBarExample extends StatefulWidget {
  const ThreeTabBarExample({super.key});

  @override
  _ThreeTabBarExampleState createState() => _ThreeTabBarExampleState();
}

class _ThreeTabBarExampleState extends State<ThreeTabBarExample>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 3, vsync: this); // Define number of tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            const Tab(text: "معلومات عننا"),
            const Tab(text: "خدماتنا"),
            const Tab(text: "المعرض"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Informationaboutus(),
          ServicesHotel(),
          show(),
        ],
      ),
    );
  }
}
