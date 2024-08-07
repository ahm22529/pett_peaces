import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/store/domain/entity/department_entity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/checked.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/header_buttom_sheet.dart';

class Custommodelshhet extends StatefulWidget {
  final List<DepartmentEntity> department;

  const Custommodelshhet({super.key, required this.department});
  @override
  State<Custommodelshhet> createState() => _CustommodelshhetState();
}

class _CustommodelshhetState extends State<Custommodelshhet> {
  List<String> selectedItems = [];

  void handleCheckboxChange(bool isChecked, String item) {
    setState(() {
      if (isChecked) {
        selectedItems.add(item);
      } else {
        selectedItems.remove(item);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          children: [
            const Headerbottomsheet(
              titel11: ' الفئه',
              titel2: 'الرجوع',
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.department.length,
                itemBuilder: (BuildContext context, int index) {
                  return CheckCorrect(
                    titel: widget.department[index].namee,
                    onCheckboxChanged: handleCheckboxChange,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
