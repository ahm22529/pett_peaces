import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/domain/entity/department_entity.dart';
import 'package:pett_peaces/fetures/store/prention/manager/cubit/department_cubit.dart';
import 'package:pett_peaces/fetures/store/prention/manager/featchallproduct/fectch_product_cubit.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/buttom_sheet_advance.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/button_ofa_dvance_sheet.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/continer_text_filed.dart';

class Titelappbar extends StatefulWidget {
  const Titelappbar({
    super.key,
    required this.name,
    required this.userEntitymodel,
  });
  final String name;
  final UserEntity userEntitymodel;
  @override
  State<Titelappbar> createState() => _TitelappbarState();
}

class _TitelappbarState extends State<Titelappbar> {
  TextEditingController textEditingController = TextEditingController();
  Timer? debounce;
  List<DepartmentEntity> lis = [];

  @override
  void initState() {
    super.initState();
    fetchPredictions();
    BlocProvider.of<DepartmentCubit>(context).getDepaartment(
        endpoint: "data/departments", token: widget.userEntitymodel.token);
  }

  void fetchPredictions() {
    textEditingController.addListener(() {
      if (debounce?.isActive ?? false) {
        debounce?.cancel();
      }
      debounce = Timer(const Duration(milliseconds: 300), () {
        BlocProvider.of<FectchProductCubit>(context).searchProducts(
          endpoint: "products",
          token: widget.userEntitymodel.token,
          query: {"key_words": textEditingController.text},
        );
      });
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Continertextfiled(
            name: widget.name,
            textEditingController: textEditingController,
          ),
        ),
        BlocListener<DepartmentCubit, DepartmentState>(
          listener: (context, state) {
            // TODO: implement listener
            if (state is DepartmentSucess) {
              setState(() {
                lis = state.alldDepartment.dep;
              });
            }
          },
          child: IconButton(
            icon: Image.asset('Asset/image/filter.png'),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (builder) => CustomButtomShhetadvance(
                        lis: lis,
                      ));
            },
          ),
        ),
      ],
    );
  }
}
