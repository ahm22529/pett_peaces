import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

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
              SizedBox(
                  height: 220,
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (context, index) => showIteam(
                            active: _selectedIndex == index,
                            img:
                                'Asset/image/view-building-with-cartoon-style-architecture__1_-removebg-preview 1.png',
                            text: 'حجز فندق',
                          ))),
              const Headersection(
                titel1: 'حيواناتي',
                titel2: 'عرض المزيد',
              ),
              Row(
                children: [
                  const Anmmalesme(),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset("Asset/image/addanmailes.png")
                ],
              ),
              SizedBox(
                  height: 220,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: IteamStore(),
                          ))),
              SizedBox(
                  height: 150,
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

class Headersection extends StatelessWidget {
  const Headersection({
    super.key,
    required this.titel1,
    required this.titel2,
  });
  final String titel1, titel2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "حيواناتي",
          style: AppStyles.styleMedium18(context)
              .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        Text(
          "عرض المزيد",
          style: AppStyles.styleMedium18(context).copyWith(
              color: const Color(0xffF78E32), fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}

class showIteam extends StatelessWidget {
  final bool active;
  final String img, text;

  const showIteam({
    super.key,
    required this.active,
    required this.img,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ActiveIteam(
      im: img,
      te: text,
      color: active ? const Color(0xffF78E32) : const Color(0xffF5E8DD),
    );
  }
}

class ActiveIteam extends StatelessWidget {
  final String im, te;
  final Color color;

  const ActiveIteam({
    super.key,
    required this.im,
    required this.te,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Image.asset(im),
          const SizedBox(height: 10),
          Text(te),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Text(
        'Header',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class IteamStore extends StatelessWidget {
  const IteamStore({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 5),
          child: Column(children: [
            const Text("طعام يوناني الاصل مستورد"),
            Image.asset("Asset/image/20802-removebg-preview 1.png"),
            Container(
              width: MediaQuery.of(context).size.width * .5,
              decoration: BoxDecoration(
                color: const Color(0xffF78E32).withOpacity(.3),
                borderRadius: BorderRadius.circular(9),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "299\$",
                          style: AppStyles.styleMedium18(context).copyWith(
                              fontWeight: FontWeight.w800,
                              color: const Color(0xffF78E32)),
                        ),
                        Text(
                          "120",
                          style: AppStyles.styleMedium18(context).copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 12),
                        )
                      ],
                    ),
                    Image.asset("Asset/image/add.png")
                  ],
                ),
              ),
            )
          ]),
        ));
  }
}

class Courses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "Asset/image/foter.png"), // Replace with your image asset
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: Column(
          children: [
            Container(
              color: const Color(0xffFFFFFF).withOpacity(.3),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 7),
                child: Text(
                  "كورس تعليم الكلاب ",
                  style: AppStyles.styleMedium16(context)
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                infocourses(),
                SizedBox(
                  width: 5,
                ),
                infocourses(),
                SizedBox(
                  width: 5,
                ),
                infocourses(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class infocourses extends StatelessWidget {
  const infocourses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(.3),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              "كلب",
              style: AppStyles.styleMedium16(context)
                  .copyWith(fontSize: 12, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class Anmmalesme extends StatelessWidget {
  const Anmmalesme({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.center,
          image: AssetImage(
              "Asset/image/Frame 1000004356.png"), // Replace with your image asset
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Image.asset(
                "Asset/image/adorable-cat-relaxing-indoors-removebg-preview 1.png"),
            const Column(
              children: [
                InfoAnmales(
                  tt: "روز",
                ),
                SizedBox(
                  height: 8,
                ),
                InfoAnmales(
                  tt: "روز",
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    InfoAnmales1(
                      tt: "ذكر",
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InfoAnmales1(
                      tt: "3 سنوات",
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class InfoAnmales extends StatelessWidget {
  const InfoAnmales({
    super.key,
    required this.tt,
  });
  final String tt;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff101010).withOpacity(.2),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 66.0, vertical: 9),
        child: Text(
          tt,
          style: AppStyles.styleMedium18(context),
        ),
      ),
    );
  }
}

class InfoAnmales1 extends StatelessWidget {
  const InfoAnmales1({
    super.key,
    required this.tt,
  });
  final String tt;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff101010).withOpacity(.2),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 9),
        child: Text(
          tt,
          style: AppStyles.styleMedium18(context),
        ),
      ),
    );
  }
}
