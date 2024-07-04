import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/anmiles.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/gridviewstore.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/grisviewservices.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/headersection.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/listviewstore.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/userinfo.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  _HomeViewBodyState createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              UserInfoCard(),
              const SizedBox(
                height: 24,
              ),
              Image.asset("Asset/image/1 1 (1).png"),
              const SizedBox(
                height: 40,
              ),
              gridviewservices(),
              const SizedBox(
                height: 32,
              ),
              const Headersection(
                titel1: 'حيواناتي',
                titel2: 'عرض المزيد',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Anmmalesme(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height * .2,
                        child: Image.asset("Asset/image/addanmailes.png")),
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              const Headersection(
                titel1: ' المتجر',
                titel2: 'عرض المزيد',
              ),
              const SizedBox(
                height: 20,
              ),
              const gridviewstore(),
              const SizedBox(
                height: 25,
              ),
              Image.asset("Asset/image/Frame 1000004499.png"),
              const SizedBox(
                height: 32,
              ),
              const Headersection(
                titel1: 'كورسات تعليمية',
                titel2: 'عرض المزيد',
              ),
              const SizedBox(
                height: 23,
              ),
              const listviewCourses(),
              const SizedBox(
                height: 56,
              )
            ],
          ),
        ),
      ),
    );
  }
}
