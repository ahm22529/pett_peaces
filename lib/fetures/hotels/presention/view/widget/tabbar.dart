import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/image.dart';
import 'package:pett_peaces/fetures/hotels/data/model/hotelresponse/hotelresponse.dart';
import 'package:pett_peaces/fetures/hotels/domain/entity/aboutus_entity.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/googe_lmaps.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/emailand_phone.dart';

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
          Informationaboutus(
            hotelEntity: widget.hotelEntity,
          ),
          ServicesHotel(
            hotelEntity: widget.hotelEntity,
          ),
          show(
            hotelEntity: widget.hotelEntity.ser[0].otherimage,
          ),
        ],
      ),
    );
  }
}

class ServicesHotel extends StatelessWidget {
  const ServicesHotel({super.key, required this.hotelEntity});
  final HotelEntity hotelEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          "أسعار الخدمات",
          style: AppStyles.styleMedium18(context)
              .copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: hotelEntity.ser[0].ser.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: servicesIteam(
                          img: hotelEntity.ser[0].ser[index].imagee,
                          name: hotelEntity.ser[0].ser[index].servacename,
                          price: hotelEntity.ser[0].ser[index].pric),
                    )))
      ],
    );
  }
}

class servicesIteam extends StatelessWidget {
  final String img, name, price;

  const servicesIteam(
      {super.key, required this.img, required this.name, required this.price});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Color(0xff3A599C).withOpacity(.8),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: SizedBox(height: 24, child: Image.network(img)),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Text(name,
            style: AppStyles.styleMedium16(context)
                .copyWith(color: Colors.black, fontWeight: FontWeight.w600)),
        Spacer(),
        Text(
          price,
          style: AppStyles.styleMedium16(context)
              .copyWith(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "رعاية طبيبة",
          style: AppStyles.styleMedium12(context)
              .copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}

class Informationaboutus extends StatelessWidget {
  final HotelEntity hotelEntity;

  const Informationaboutus({super.key, required this.hotelEntity});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 22,
        ),
        Text(
          hotelEntity.ser[0].des,
          style: AppStyles.styleRegular14(context)
              .copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 16,
        ),
        emailandphone(
          titel: hotelEntity.ser[0].emai,
          imagee: 'Asset/image/mail.png',
        ),
        const SizedBox(
          height: 12,
        ),
        emailandphone(
          titel: hotelEntity.ser[0].phonr,
          imagee: "Asset/image/call.png",
        ),
        const GoogelmapsContiner()
      ],
    );
  }
}
