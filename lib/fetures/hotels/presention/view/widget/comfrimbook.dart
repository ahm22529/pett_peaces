import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/contactus/prsention/view/widget/textfiledreson.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/continerbuttom.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/datepickertextfiled.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/droptextfiled.dart';

class comfrimbook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Bodycomfrimbook(),
    );
  }
}

class Bodycomfrimbook extends StatefulWidget {
  const Bodycomfrimbook({
    super.key,
  });

  @override
  State<Bodycomfrimbook> createState() => _BodycomfrimbookState();
}

class _BodycomfrimbookState extends State<Bodycomfrimbook> {
  List titel = ["رعاية طبية", "صالون", "استلام وتوصيل من المنزل", "التزاوج"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: 73,
          ),
          customAppbar(),
          SizedBox(
            height: 32,
          ),
          dateofbook(),
          SizedBox(
            height: 16,
          ),
          datepic(
              widget: DropdownField(
                options: [",ماريو", "ماريو"],
                controller: TextEditingController(),
              ),
              text: "اختر الحيوان"),
          SizedBox(
            height: 16,
          ),
          Text(
            "الخدمات",
            style: AppStyles.styleMedium16(context)
                .copyWith(fontWeight: FontWeight.w600, color: Colors.black),
          ),
          ...List.generate(
              titel.length,
              (index) => checkchoose(
                    titel: titel[index],
                  )),
          datepic(
              widget: Textformfieldresoncon(
                maxline: 1,
                initialValue: '',
              ),
              text: "عدد أيام التزاوج"),
          SizedBox(
            height: 16,
          ),
          Spacer(),
          continerbuttom(),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class dateofbook extends StatelessWidget {
  const dateofbook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: datepic(
            widget: DatePickerField(
              controller: TextEditingController(),
              Imag: 'Asset/image/calendar add.png',
            ),
            text: 'تاريخ الحجز من',
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: datepic(
            widget: DatePickerField(
              controller: TextEditingController(),
              Imag: 'Asset/image/calendar add.png',
            ),
            text: '  إلي',
          ),
        ),
      ],
    );
  }
}

class checkchoose extends StatefulWidget {
  const checkchoose({super.key, required this.titel});
  final String titel;
  @override
  State<checkchoose> createState() => _checkchooseState();
}

class _checkchooseState extends State<checkchoose> {
  bool isactive = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: isactive
          ? GestureDetector(
              onTap: () {
                setState(() {
                  isactive = !isactive;
                });
              },
              child: Image.asset("Asset/image/acti.png"))
          : GestureDetector(
              onTap: () {
                setState(() {
                  isactive = !isactive;
                });
              },
              child: Image.asset("Asset/image/notactiv.png")),
      title: Text(
        widget.titel,
        style: AppStyles.styleRegular14(context)
            .copyWith(color: Color(0xff00070D).withOpacity(.8)),
      ),
      trailing: price(isactive: isactive),
    );
  }
}

class price extends StatelessWidget {
  const price({
    super.key,
    required this.isactive,
  });

  final bool isactive;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isactive,
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: "\$20  ",
            style: AppStyles.styleMedium12(context)
                .copyWith(fontWeight: FontWeight.w600, color: Colors.black)),
        TextSpan(
            text: "لليوم الواحد ",
            style: AppStyles.styleMedium12(context).copyWith(
                fontWeight: FontWeight.w600, color: Color(0xff8A8A8A))),
      ])),
    );
  }
}

class datepic extends StatelessWidget {
  const datepic({
    super.key,
    required this.widget,
    required this.text,
  });
  final Widget widget;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppStyles.styleMedium16(context)
              .copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 8,
        ),
        widget
      ],
    );
  }
}
