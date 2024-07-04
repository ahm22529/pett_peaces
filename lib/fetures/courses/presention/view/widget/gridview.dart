import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/courses/data/model/itteamgridview.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/iteamgridview.dart';

class CustomGridViewcourses extends StatefulWidget {
  const CustomGridViewcourses({
    super.key,
  });

  @override
  State<CustomGridViewcourses> createState() => _CustomGridViewcoursesState();
}

class _CustomGridViewcoursesState extends State<CustomGridViewcourses> {
  final services = [
    IteamGridviewModel(
        Imag: "Asset/image/Frame 1000004370.png",
        titiel: "نوع الحيوان",
        titel2: "كلب"),
    IteamGridviewModel(
        Imag: "Asset/image/Frame 1000004370.png",
        titiel: "نوع الحيوان",
        titel2: "كلب"),
    IteamGridviewModel(
        Imag: "Asset/image/Frame 1000004370.png",
        titiel: "نوع الحيوان",
        titel2: "كلب"),
    IteamGridviewModel(
        Imag: "Asset/image/Frame 1000004370.png",
        titiel: "نوع الحيوان",
        titel2: "كلب"),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: services.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // عدد الأعمدة
        mainAxisSpacing: 12, // التباعد الرأسي
        crossAxisSpacing: 9, // التباعد الأفقي
        childAspectRatio: 5.25 / 2, // نسبة العرض إلى الارتفاع
      ),
      itemBuilder: (BuildContext context, int index) {
        return CustomDateCard(
          titel1: services[index].titiel,
          titel2: services[index].titel2,
          img: services[index].Imag,
        );
      },
    );
  }
}
