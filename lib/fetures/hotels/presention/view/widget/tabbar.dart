import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/image.dart';
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

class ServicesHotel extends StatelessWidget {
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
        servicesIteam(),
        SizedBox(
          height: 16,
        ),
        servicesIteam(),
        SizedBox(
          height: 16,
        ),
        servicesIteam(),
        SizedBox(
          height: 16,
        ),
        servicesIteam(),
      ],
    );
  }
}

class servicesIteam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Color(0xff3A599C).withOpacity(.8),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: SizedBox(
                height: 24,
                child: Image.asset("Asset/image/health-report (1) 1.png")),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Text("رعاية طبيبة",
            style: AppStyles.styleMedium16(context)
                .copyWith(color: Colors.black, fontWeight: FontWeight.w600)),
        Spacer(),
        Text(
          " 20\$",
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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 22,
        ),
        Text(
          "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى حيث يمكنك أن تولد",
          style: AppStyles.styleRegular14(context)
              .copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 16,
        ),
        const emailandphone(),
        const SizedBox(
          height: 12,
        ),
        const emailandphone(),
        const googelmapsContiner()
      ],
    );
  }
}
