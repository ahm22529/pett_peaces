import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/categoryservices.dart';
import 'package:pett_peaces/fetures/se3rviecs/presention/view/widget/catagrorybuttom.dart';

class CustomGridViewHome extends StatefulWidget {
  const CustomGridViewHome({
    super.key,
  });

  @override
  State<CustomGridViewHome> createState() => _CustomGridViewHomeState();
}

class _CustomGridViewHomeState extends State<CustomGridViewHome> {
  int selectedindex = -1;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: 9,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // عدد الأعمدة
        mainAxisSpacing: 5, // التباعد الرأسي
        crossAxisSpacing: 3, // التباعد الأفقي
        childAspectRatio: 2.6 / 4.9, // نسبة العرض إلى الارتفاع
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
          child: CategoryButtonhome(
            backgroundColor:
                selectedindex == index ? Color(0xffF78E32) : Color(0xffF78E32),
            text: services[index]['text'] as String,
            imagePath: services[index]['imagePath'] as String,
          ),
        );
      },
    );
  }
}
