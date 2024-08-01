import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/show_Image.dart';
import 'package:pett_peaces/fetures/hotels/domain/entity/aboutus_entity.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/information_about_us.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/services_hotel.dart';

class ThreeTabBarExample extends StatefulWidget {
  const ThreeTabBarExample({super.key, required this.hotelEntity});
  final HotelEntity hotelEntity;
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
          tabs: const [
            Tab(text: "معلومات عننا"),
            Tab(text: "خدماتنا"),
            Tab(text: "المعرض"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Informationaboutus(
            hotelEntity: widget.hotelEntity,
          ),
          ServicesHotel(
            hotelEntity: widget.hotelEntity,
          ),
          ShowImage(
            hotelEntity: widget.hotelEntity.ser[0].otherimage,
          ),
        ],
      ),
    );
  }
}
