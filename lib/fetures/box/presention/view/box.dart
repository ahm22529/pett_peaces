import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/function/buildrow.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';

import '../../../check/data/model/iteammodel.dart';

class Box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyBox(),
    );
  }
}

class BodyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          child: ListTile(
            leading: Image.asset("Asset/image/Back.png"),
            title: Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: Text(
                "  السلة",
                style: AppStyles.stylesemi20(context)
                    .copyWith(color: Colors.black),
              ),
            ),
          ),
        ),
        listiteamorder()
      ],
    );
  }
}

class listiteamorder extends StatefulWidget {
  const listiteamorder({super.key});

  @override
  State<listiteamorder> createState() => _listiteamorderState();
}

class _listiteamorderState extends State<listiteamorder> {
  List iteam = [
    iteamchecmmmmkmodel(
        titel: 'طعام يوناني الأصل',
        image: 'Asset/image/Frame 1000004378 (1).png',
        price: '299\$',
        volum: '1200g'),
    iteamchecmmmmkmodel(
        titel: 'طعام يوناني الأصل',
        image: 'Asset/image/Frame 1000004378 (1).png',
        price: '299\$',
        volum: '1200g'),
    iteamchecmmmmkmodel(
        titel: 'طعام يوناني الأصل',
        image: 'Asset/image/Frame 1000004378 (1).png',
        price: '299\$',
        volum: '1200g'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: _buildItemsWithDividers(),
        ),
        buildRow("3", "عدد المنتجات", FontWeight.w600, Color(0xff545454),
            Colors.black),
        SizedBox(
          height: 16,
        ),
        buildRow("3", "عدد المنتجات", FontWeight.w600, Color(0xff545454),
            Colors.black),
        SizedBox(
          height: 16,
        ),
        buildRow("3", "عدد المنتجات", FontWeight.w600, Color(0xff545454),
            Colors.black),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [Custombuttom(titel: "إدفع", onPressed: () {})],
        )
      ],
    );
  }

  List<Widget> _buildItemsWithDividers() {
    List<Widget> itemsWithDividers = [];
    for (int i = 0; i < iteam.length; i++) {
      itemsWithDividers.add(Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: IteamBox(),
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

class info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class IteamBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Image.asset("Asset/image/Frame 1000004370.png"),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    informtion(),
                    Spacer(),
                    Image.asset("Asset/image/ggg.png"),
                  ],
                ),
                SizedBox(
                  height: 29,
                ),
                Row(
                  children: [
                    Text(
                      "299\$",
                      style: AppStyles.styleMedium18(context)
                          .copyWith(color: Color(0xffF78E32)),
                    ),
                    Spacer(),
                    AddMiuns(),
                    SizedBox(
                      width: 5,
                    ),
                    Text("0"),
                    SizedBox(
                      width: 5,
                    ),
                    AddMiuns()
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AddMiuns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF78E32),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

class informtion extends StatelessWidget {
  const informtion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "طعام يوناني الاصل ",
          style: AppStyles.styleMedium18(context)
              .copyWith(fontWeight: FontWeight.w600),
        ),
        Text(
          "1200g",
          style: AppStyles.styleMedium12(context),
        ),
      ],
    );
  }
}
