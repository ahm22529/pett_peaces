import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/chatdetails.dart';
import 'package:pett_peaces/fetures/masssege/presention/view/widget/iteammassege.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/continertextfiled.dart';

class BodyMassege extends StatelessWidget {
  final ValueChanged<int> onItemSelected;

  BodyMassege({required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 73,
        ),
        const customAppbar(
          name: 'الرسايل',
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: continertextfiled(
            name: "ابحث عن شخص",
          ),
        ),
        Expanded(
          child: ListView.builder(
            // عدد العناصر في القائمة
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(bottom: 1.0),
              child: GestureDetector(
                onTap: () {
                  onItemSelected(index);
                  if (MediaQuery.of(context).size.width < 600) {
                    // الانتقال إلى صفحة التفاصيل في وضع الجوال
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Chatdetails(),
                      ),
                    );
                  }
                },
                child: iteammassage(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
