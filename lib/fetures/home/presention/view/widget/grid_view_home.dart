import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/my_anmiles.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/sellerand_buy.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/cotacting.dart';
import 'package:pett_peaces/fetures/courses/presention/view/course_list.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/doctor.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/exapmel.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/category_services.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/hotel.dart';
import 'package:pett_peaces/fetures/mating/prsention/view/all_anmiles_mating.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/view/store.dart';

class CustomGridViewHome extends StatefulWidget {
  final UserEntitymodel userEntitymodel;
  const CustomGridViewHome({
    super.key,
    required this.userEntitymodel,
  });

  @override
  State<CustomGridViewHome> createState() => _CustomGridViewHomeState();
}

class _CustomGridViewHomeState extends State<CustomGridViewHome> {
  late List nav;

  int selectedindex = -1;
  @override
  void initState() {
    super.initState();
    final List nav = [
      Hotel(
        userEntitymodel: widget.userEntitymodel,
      ),
      Doctor(
        userEntitymodel: widget.userEntitymodel,
      ),
      Cotching(
        userEntitymodel: widget.userEntitymodel,
      ),
      AllAnmilesMating(
        userEntitymodel: widget.userEntitymodel,
      ),
      Myanmiles(
        userEntitymodel: widget.userEntitymodel,
      ),
      Store(
        pro: [],
        userEntitymodel: widget.userEntitymodel,
      ),
      SellerAndBuyer(
        userEntitymodel: widget.userEntitymodel,
      ),
      Courselist(
        userEntitymodel: widget.userEntitymodel,
      ),
      Example(
        userEntitymodel: widget.userEntitymodel,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: 9,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // عدد الأعمدة
        mainAxisSpacing: 5, // التباعد الرأسي
        crossAxisSpacing: 20, // التباعد الأفقي
        childAspectRatio: 2.6 / 10, // نسبة العرض إلى الارتفاع
      ),
      itemBuilder: (BuildContext context, int index) {
        final services = [
          {
            'text': 'حجز فندق',
            'imagePath':
                'Asset/image/view-building-with-cartoon-style-architecture__1_-removebg-preview 1.png'
          },
          {'text': 'قسم الأطباء', 'imagePath': 'Asset/image/ser8.png'},
          {'text': 'قسم المدربين', 'imagePath': 'Asset/image/ser7.png'},
          {'text': 'التزاوج', 'imagePath': 'Asset/image/ser6.png'},
          {'text': 'حيواناتي', 'imagePath': 'Asset/image/ser6.png'},
          {'text': 'المتجر', 'imagePath': 'Asset/image/ser4.png'},
          {'text': 'بيع وشراء', 'imagePath': 'Asset/image/ser3.png'},
          {'text': 'كورسات', 'imagePath': 'Asset/image/ser2.png'},
          {'text': 'أمثلة ونصائح', 'imagePath': 'Asset/image/serv1.png'},
        ];

        return GestureDetector(
          onTap: () {
            setState(() {
              selectedindex = index;
            });
          },
          child: GestureDetector(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (builder) => nav[index])),
            child: CategoryButtonhome(
              backgroundColor: selectedindex == index
                  ? Color(0xffF78E32)
                  : Color(0xffF78E32),
              text: services[index]['text'] as String,
              imagePath: services[index]['imagePath'] as String,
            ),
          ),
        );
      },
    );
  }
}
