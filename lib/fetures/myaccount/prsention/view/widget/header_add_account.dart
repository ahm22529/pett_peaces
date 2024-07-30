import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/function/builderrorbar.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/deletmyanmiles/delet_anmiles_cubit.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/fetechmyanmiles/fetach_my_anmiles_cubit.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/bodyfristcontiner.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class HeaderWidget extends StatelessWidget {
  final VoidCallback toggleEditingMode;
  final String text1;
  final String text2;
  final UserEntitymodel userEntitymodel;
  final VoidCallback toggleCancelingMode;
  final String id;
  final void Function()? onTap;
  final void Function(File?) onImagePicked;
  const HeaderWidget({
    Key? key,
    required this.toggleEditingMode,
    required this.text1,
    required this.text2,
    required this.onImagePicked,
    required this.toggleCancelingMode,
    required this.id,
    required this.userEntitymodel,required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeletAnmilesCubit, DeletAnmilesState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is DeletAnmilessucess) {
          Navigator.pop(context);
          buildErrorBar(context, "تم الحذف بنجاح");
        }
      },
      child: bodyfristcontiner(
          toggleEditingMode: toggleEditingMode,
          text1: text1,
          text2: text2,
          onImagePicked: onImagePicked,
          id: id,
          togglecacelingMode: toggleCancelingMode,
          onTap:onTap ),
    );
  }
}


