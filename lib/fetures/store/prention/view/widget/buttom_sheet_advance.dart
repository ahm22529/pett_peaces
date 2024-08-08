import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/services/localservices/manager/cubit/localdata_cubit.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/data/repo/repo_imp.dart';
import 'package:pett_peaces/fetures/store/domain/entity/department_entity.dart';
import 'package:pett_peaces/fetures/store/domain/repo.dart';
import 'package:pett_peaces/fetures/store/prention/manager/cubit/filter_cubit.dart';
import 'package:pett_peaces/fetures/store/prention/manager/department/department_cubit.dart';
import 'package:pett_peaces/fetures/store/prention/manager/featchallproduct/fectch_product_cubit.dart';

import 'body_continero_fadvance.dart';

class CustomButtomShhetadvance extends StatefulWidget {
  const CustomButtomShhetadvance(
      {super.key, required this.lis, required this.userEntity});
  final List<DepartmentEntity> lis;
  final UserEntity userEntity;

  @override
  State<CustomButtomShhetadvance> createState() =>
      _CustomButtomShhetadvanceState();
}

class _CustomButtomShhetadvanceState extends State<CustomButtomShhetadvance> {
  StoreRepo storeRepo = StoreRepoImp();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DepartmentCubit(storeRepo),
        ),
        BlocProvider(
          create: (context) => FilterCubit(),
        ),
        BlocProvider(
          create: (context) => FectchProductCubit(storeRepo),
        ),
        BlocProvider(
          create: (context) => LocaldataCubit(),
        ),
      ],
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 020.0, vertical: 20),
          child: Bodycontinerofbuttomsheet(
            lis: widget.lis,
            userEntity: widget.userEntity,
          ),
        ),
      ),
    );
  }
}
