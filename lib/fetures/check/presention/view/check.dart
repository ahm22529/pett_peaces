import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/check/data/model/iteammodel.dart';

class Checkbokut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Bodycheck(),
    );
  }
}

class Bodycheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset("Asset/image/Back.png"),
                    title: Padding(
                      padding: const EdgeInsets.only(right: 40.0),
                      child: Text(
                        "إتمام عملية الدفع",
                        style: AppStyles.stylesemi20(context)
                            .copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 46,
                  ),
                  ListIt(),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: infoorder(),
        )
      ],
    );
  }
}

class iteamcheckmodel {
  final String titel;
  final String image;
  final String price;
  final String volum;

  iteamcheckmodel({
    required this.titel,
    required this.image,
    required this.price,
    required this.volum,
  });
}

class iteamcheck extends StatelessWidget {
  const iteamcheck({super.key, required this.iteam});
  final iteamcheckmodel iteam;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Image.asset(
                    iteam.image,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    iteam.titel,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xFF020202),
                    ),
                  ),
                  Text(
                    iteam.volum,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color(0xFF545454),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    iteam.price,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xFFF78E32),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ListIt extends StatefulWidget {
  const ListIt({super.key});

  @override
  State<ListIt> createState() => _ListIteamState();
}

class _ListIteamState extends State<ListIt> {
  List iteam = [
    iteamcheckmodel(
        titel: 'طعام يوناني الأصل',
        image: 'Asset/image/Frame 1000004378 (1).png',
        price: '299\$',
        volum: '1200g'),
    iteamcheckmodel(
        titel: 'طعام يوناني الأصل',
        image: 'Asset/image/Frame 1000004378 (1).png',
        price: '299\$',
        volum: '1200g'),
    iteamcheckmodel(
        titel: 'طعام يوناني الأصل',
        image: 'Asset/image/Frame 1000004378 (1).png',
        price: '299\$',
        volum: '1200g'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _buildItemsWithDividers(),
    );
  }

  List<Widget> _buildItemsWithDividers() {
    List<Widget> itemsWithDividers = [];
    for (int i = 0; i < iteam.length; i++) {
      itemsWithDividers.add(Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: iteamcheck(
          iteam: iteam[i],
        ),
      ));
      if (i < iteam.length) {
        itemsWithDividers.add(const Divider(
          height: 25,
        ));
      }
    }
    return itemsWithDividers;
  }
}

class infoorder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      child: Column(
        children: [
          buildRow("3 منتجات", "عدد المنتجات", FontWeight.w500, Colors.black,
              Color(0xFF545454)),
          SizedBox(
            height: 16,
          ),
          buildRow("599\$", "سعر المنتجات", FontWeight.w500, Colors.black,
              Color(0xFF545454)),
          SizedBox(
            height: 16,
          ),
          buildRow("11\$", "خدمة توصيل", FontWeight.w500, Colors.black,
              Color(0xFF545454)),
          SizedBox(
            height: 16,
          ),
          buildRow(
            "11\$",
            "القيمة المضافة",
            FontWeight.w500,
            Colors.black,
            Color(0xFF545454),
          ),
          SizedBox(
            height: 16,
          ),
          buildRow(
            "-20\$",
            "خصم الكوبون",
            FontWeight.w500,
            Colors.black,
            Color(0xFF545454),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1.5,
            height: 30,
          ),
          buildRow(
            "610\$",
            "السعر النهائي",
            FontWeight.w600,
            Color(0xFF00070D),
            Colors.black,
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child:
                    buildButton("إتمام الدفع", Colors.white, Color(0xFFF78E32)),
              ),
              SizedBox(width: 16),
              Expanded(
                child:
                    buildButton("إلغاء", Color(0xFFE50000), Colors.transparent),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildRow(String title, String value, FontWeight fontWeight,
      Color color1, Color color2) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            value,
            style: TextStyle(
              fontFamily: 'Changa',
              fontSize: 16,
              fontWeight: fontWeight,
              color: color1,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Changa',
              fontSize: 16,
              fontWeight: fontWeight,
              color: color2,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButton(String text, Color textColor, Color backgroundColor) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Color(0xFFE50000)),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Changa',
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
