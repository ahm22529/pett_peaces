import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/store/domain/entity/department_entity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/buttom_shett.dart';

class Catogry extends StatefulWidget {
  const Catogry({
    Key? key,
    required this.titel1,
    required this.tiele2,
    required this.depart,
  }) : super(key: key);
  final String titel1, tiele2;
  final List<DepartmentEntity> depart;

  @override
  State<Catogry> createState() => _CatogryState();
}

class _CatogryState extends State<Catogry> {
  late String selectedTitel;

  @override
  void initState() {
    super.initState();
    selectedTitel = widget.titel1;
  }

  void updateTitel(String newTitel) {
    setState(() {
      selectedTitel = newTitel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          selectedTitel,
          style: AppStyles.styleMedium16(context).copyWith(color: Colors.black),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: Text(
            widget.tiele2,
            style: AppStyles.styleRegular14(context).copyWith(color: Colors.black),
          ),
        ),
        const SizedBox(width: 16),
        GestureDetector(
          onTap: () async {
            final result = await showModalBottomSheet<String>(
              context: context,
              builder: (builder) => Custommodelshhet(
                department: widget.depart,
              ),
            );
            if (result != null) {
              updateTitel(result);
            }
          },
          child: SizedBox(
            height: 30,
            child: Image.asset("Asset/image/Vector.png"),
          ),
        ),
      ],
    );
  }
}
