import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/store/domain/entity/department_entity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/buttom_shett.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/sub_department.dart';

class Catogry extends StatefulWidget {
  const Catogry({
    Key? key,
    required this.titel1,
    required this.tiele2,
    required this.depart,required this.onTap,
  }) : super(key: key);
  final String titel1, tiele2;
  final List<DepartmentEntity> depart;
final void Function()? onTap;
  @override
  State<Catogry> createState() => _CatogryState();
}

class _CatogryState extends State<Catogry> {
  late String selectedTitel;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.titel1,
          style: AppStyles.styleMedium16(context).copyWith(color: Colors.black),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: Text(
            widget.tiele2,
            style:
                AppStyles.styleRegular14(context).copyWith(color: Colors.black),
          ),
        ),
        const SizedBox(width: 16),
        GestureDetector(
          onTap:widget.onTap,
          child: SizedBox(
            height: 30,
            child: Image.asset("Asset/image/Vector.png"),
          ),
        ),
      ],
    );
  }
}
