import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/courses/data/model/itteamgridview.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/iteam_grid_view.dart';
import 'package:pett_peaces/fetures/home/domain/entity/coursese_entity.dart';

class CustomGridViewcourses extends StatefulWidget {
  const CustomGridViewcourses({
    super.key,
    required this.courseseEntity,
  });

  final CourseseEntity courseseEntity;
  @override
  State<CustomGridViewcourses> createState() => _CustomGridViewcoursesState();
}

class _CustomGridViewcoursesState extends State<CustomGridViewcourses> {
  late final services;
  @override
  void initState() {
    // TODO: implement initState

    services = [
      IteamGridviewModel(
          Imag: "Asset/image/Frame 1000004378.png",
          titiel: " نوع الحيوان",
          titel2: widget.courseseEntity.nameof),
      IteamGridviewModel(
          Imag: "Asset/image/Frame 1000004378 (1).png",
          titiel: " السعر",
          titel2: widget.courseseEntity.priceof),
      IteamGridviewModel(
          Imag: "Asset/image/Frame 1000004378 (2).png",
          titiel: " المده",
          titel2: widget.courseseEntity.day.toString()),
      IteamGridviewModel(
          Imag: "Asset/image/Frame 1000004378 (3).png",
          titiel: " تاريخ البدايه",
          titel2: widget.courseseEntity.startdate),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: services.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // عدد الأعمدة
        mainAxisSpacing: 10, // التباعد الرأسي
        crossAxisSpacing: 9, // التباعد الأفقي
        childAspectRatio: 6 / 2.6, // نسبة العرض إلى الارتفاع
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
