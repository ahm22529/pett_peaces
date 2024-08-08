import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/services/localservices/manager/cubit/localdata_cubit.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/domain/entity/department_entity.dart';
import 'package:pett_peaces/fetures/store/prention/manager/cubit/filter_cubit.dart';
import 'package:pett_peaces/fetures/store/prention/manager/featchallproduct/fectch_product_cubit.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/buttom_shett.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/catogry_advance_butomsheet.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/header_buttom_sheet.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/iteam_sub_depart.dart';

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
  Set<String> subdep = {}; // استخدام Set بدلاً من List لمنع التكرارات

  @override
  void initState() {
    super.initState();
    BlocProvider.of<FilterCubit>(context).loadFilterValues();
  }

  @override
  Widget build(BuildContext context) {
    subdep = BlocProvider.of<LocaldataCubit>(context)
        .getdepart()
        .map((e) => e.idd.toString())
        .toSet(); // تحويل القائمة إلى Set لإزالة التكرارات

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
            visible: subdep.isNotEmpty,
            child: Row(
              children: subdep.map((item) {
                final subDepartEntity = BlocProvider.of<LocaldataCubit>(context)
                    .getdepart()
                    .firstWhere((e) => e.idd.toString() == item);

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: IteamSubDepart(
                    subDepartEntity: subDepartEntity,
                    onDelete: () {
                      setState(() {
                        subdep.remove(item); // حذف العنصر من Set
                      });
                    },
                  ),
                );
              }).toList(),
            ),
          ),
          Divider(
            height: 24,
            color: const Color(0xff21235F).withOpacity(.25),
          ),
          Ringeprices(
            lowervule: maxvule.toString(),
            uppervule: minvule.toString(),
          ),
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
                  BlocProvider.of<FectchProductCubit>(context).filteer(
                      endpoint: "products",
                      token: widget.userEntity.token,
                      query: {
                        "department": name,
                        "sub_department": subdep.toList(), // تحويل Set إلى List
                        "min_price": minvule,
                        "max_price": maxvule
                      });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
