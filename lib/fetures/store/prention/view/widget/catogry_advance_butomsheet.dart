import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/store/domain/entity/department_entity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/buttom_shett.dart';

class Catogry extends StatelessWidget {
  const Catogry(
      {Key? key,
      required this.titel1,
      required this.tiele2,
      required this.depart})
      : super(key: key);
  final String titel1, tiele2;
  final List<DepartmentEntity> depart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titel1,
          style: AppStyles.styleMedium16(context).copyWith(color: Colors.black),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            // Add functionality for tiele2 onTap if needed
          },
          child: Text(
            tiele2,
            style:
                AppStyles.styleRegular14(context).copyWith(color: Colors.black),
          ),
        ),
        const SizedBox(width: 16),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (builder) => Custommodelshhet(
                department: depart,
              ),
            );
          },
          child: SizedBox(
            height: 15,
            child: Image.asset("Asset/image/Vector.png"),
          ),
        ),
      ],
    );
  }
}
