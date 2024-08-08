import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/domain/entity/department_entity.dart';
import 'package:pett_peaces/fetures/store/prention/manager/cubit/filter_cubit.dart';
import 'package:pett_peaces/fetures/store/prention/manager/featchallproduct/fectch_product_cubit.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/buttom_shett.dart';

import 'package:pett_peaces/fetures/store/prention/view/widget/catogry_advance_butomsheet.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/header_buttom_sheet.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/price_advance_buttomsheet.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/progress_indecore.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/ringe_prices.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/sub_department.dart';

class Bodycontinerofbuttomsheet extends StatefulWidget {
  final UserEntity userEntity;
  const Bodycontinerofbuttomsheet({
    super.key,
    required this.lis,
    required this.userEntity,
  });

  final List<DepartmentEntity> lis;

  @override
  State<Bodycontinerofbuttomsheet> createState() =>
      _BodycontinerofbuttomsheetState();
}

class _BodycontinerofbuttomsheetState extends State<Bodycontinerofbuttomsheet> {
  int maxvule = 2000, minvule = 0;
  String departid = '';
  String name = 'عرض الكل ';
  List<String> subdep = []; // تعديل نوع القائمة إلى List<String>

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<FilterCubit>(context).loadFilterValues();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<FilterCubit, FilterState>(
      listener: (context, state) {
        if (state is Filtersucess) {
          setState(() {
            maxvule = state.vule1;
            minvule = state.vule2;
          });
        }
        if (state is FilterDepart) {
          setState(() {
            name = state.name;
            departid = state.id;
          });
        }
        if (state is Filtersub) {
          setState(() {
            subdep.add(state.name); // إضافة القيم إلى قائمة subdep
          });
        }
      },
      child: ListView(
        children: [
          const Headerbottomsheet(
            titel11: "التصنيف",
            titel2: 'إعادة ضبط',
          ),
          const SizedBox(
            height: 36,
          ),
          Catogry(
            titel1: 'الفئة',
            tiele2: name,
            depart: widget.lis,
            onTap: () async {
              final result = await showModalBottomSheet<String>(
                context: context,
                builder: (builder) => Custommodelshhet(
                  department: widget.lis,
                ),
              );
            },
          ),
          Divider(
            height: 24,
            color: const Color(0xff21235F).withOpacity(.25),
          ),
          Catogry(
            titel1: "التصنيف الفرعي",
            tiele2: "عرض الكل",
            depart: widget.lis,
            onTap: () async {
              final result = await showModalBottomSheet<String>(
                context: context,
                builder: (builder) => SubDepartmentSheet(
                  department: widget.lis,
                ),
              );
            },
          ),
          Visibility(
              child: Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [Text(subdep[0])],
            ),
          )),
          Divider(
            height: 24,
            color: const Color(0xff21235F).withOpacity(.25),
          ),
          const Ringeprices(),
          ProgressSlider(
            lowervule: minvule.toString(),
            upervule: maxvule.toString(),
          ),
          Divider(
            height: 24,
            color: const Color(0xff21235F).withOpacity(.25),
          ),
          Row(
            children: [
              Custombuttom(
                titel: "تطبيق",
                onPressed: () {
                  print(subdep);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
