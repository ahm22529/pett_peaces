import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/se3rviecs/presention/view/widget/catagrorybuttom.dart';

class CustomGridViewServ extends StatelessWidget {
  const CustomGridViewServ({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 9,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // عدد الأعمدة
        mainAxisSpacing: 24, // التباعد الرأسي
        crossAxisSpacing: 17, // التباعد الأفقي
        childAspectRatio: 5.5 / 2, // نسبة العرض إلى الارتفاع
      ),
      itemBuilder: (BuildContext context, int index) {
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

        return CategoryButton(
          backgroundColor: services[index]['backgroundColor'] as Color,
          text: services[index]['text'] as String,
          imagePath: services[index]['imagePath'] as String,
        );
      },
    );
  }
}
