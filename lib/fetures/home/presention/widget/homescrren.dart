import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/home/presention/widget/anmiles.dart';
import 'package:pett_peaces/fetures/home/presention/widget/headersection.dart';
import 'package:pett_peaces/fetures/home/presention/widget/infocourses.dart';
import 'package:pett_peaces/fetures/home/presention/widget/iteamstore.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  _HomeViewBodyState createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int _selectedIndex = -1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Header(),
              Image.asset("Asset/image/1 1 (1).png"),
              const Headersection(
                titel1: 'حيواناتي',
                titel2: 'عرض المزيد',
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
              const Headersection(
                titel1: ' المتجر',
                titel2: 'عرض المزيد',
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * .31,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: IteamStore(),
                          ))),
              const Headersection(
                titel1: 'كورسات تعليمية',
                titel2: 'عرض المزيد',
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * .2,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Courses(),
                          ))),
            ],
          ),
        ),
      ),
    );
  }
}
