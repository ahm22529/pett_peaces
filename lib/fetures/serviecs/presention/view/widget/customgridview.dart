import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/my_anmiles.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/cotacting.dart';
import 'package:pett_peaces/fetures/courses/presention/view/course_list.dart';

import 'package:pett_peaces/fetures/doctor/presention/view/doctor.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/exapmel.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/category_services.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/hotel.dart';
import 'package:pett_peaces/fetures/mating/prsention/view/all_anmiles_mating.dart';

import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/view/store.dart';

import '../../../../bayandseller/presention/view/sellerand_buy.dart';
import 'catagrorybuttom.dart';

class CustomGridViewServ extends StatelessWidget {
  const CustomGridViewServ({
    super.key,
    required this.userEntitymodel,
  });
  final UserEntity userEntitymodel;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: !false,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 9,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // عدد الأعمدة
        mainAxisSpacing: 20, // التباعد الرأسي
        crossAxisSpacing: 14, // التباعد الأفقي
        childAspectRatio: 18 / 5, // نسبة العرض إلى الارتفاع
      ),
      itemBuilder: (BuildContext context, int index) {
        final List nav = [
          Hotel(
            userEntitymodel: userEntitymodel,
          ),
          Doctor(
            userEntitymodel: userEntitymodel,
          ),
          Cotching(
            userEntitymodel: userEntitymodel,
          ),
          AllAnmilesMating(
            userEntitymodel: userEntitymodel,
          ),
          Myanmiles(
            userEntitymodel: userEntitymodel,
          ),
          Store(
            pro: [],
            userEntitymodel: userEntitymodel,
          ),
          SellerAndBuyer(
            userEntitymodel: userEntitymodel,
          ),
          Courselist(
            userEntitymodel: userEntitymodel,
          ),
          Example(
            userEntitymodel: userEntitymodel,
          )
        ];
        final services = [
          {
            'backgroundColor': const Color(0xFFF78E32),
            'text': 'حجز فندق',
            'imagePath':
                'Asset/image/view-building-with-cartoon-style-architecture__1_-removebg-preview 1.png'
          },
          {
            'backgroundColor': const Color(0xFF3A599C),
            'text': 'قسم الأطباء',
            'imagePath': 'Asset/image/ser8.png'
          },
          {
            'backgroundColor': const Color(0xFFEF2525),
            'text': 'قسم المدربين',
            'imagePath': 'Asset/image/ser7.png'
          },
          {
            'backgroundColor': const Color(0xFF770056),
            'text': 'التزاوج',
            'imagePath': 'Asset/image/ser6.png'
          },
          {
            'backgroundColor': const Color(0xFF007528),
            'text': 'حيواناتي',
            'imagePath': 'Asset/image/ser6.png'
          },
          {
            'backgroundColor': const Color(0xFF9E7B00),
            'text': 'المتجر',
            'imagePath': 'Asset/image/ser4.png'
          },
          {
            'backgroundColor': const Color(0xFF003E77),
            'text': 'بيع وشراء',
            'imagePath': 'Asset/image/ser3.png'
          },
          {
            'backgroundColor': const Color(0xFF008B9E),
            'text': 'كورسات',
            'imagePath': 'Asset/image/ser2.png'
          },
          {
            'backgroundColor': const Color(0xFF800101),
            'text': 'أمثلة ونصائح',
            'imagePath': 'Asset/image/serv1.png'
          },
        ];

        return GestureDetector(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (builder) => nav[index])),
          child: CategoryButton(
            backgroundColor: services[index]['backgroundColor'] as Color,
            text: services[index]['text'] as String,
            imagePath: services[index]['imagePath'] as String,
          ),
        );
      },
    );
  }
}
