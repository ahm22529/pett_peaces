import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pett_peaces/fetures/anmailes/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/anmailes/domin/repo/repo.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/addanmiles/add_amiles_cubit.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/deletmyanmiles/delet_anmiles_cubit.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/fetechmyanmiles/fetach_my_anmiles_cubit.dart';

import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/body_my_add.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class MyAccountAdd extends StatelessWidget {
  final AnmilesRepo _anmilesRepo = AnimelsRepoImp();
  final UserEntity userEntitymodel;

  MyAccountAdd({super.key, required this.userEntitymodel});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AddAmilesCubit(_anmilesRepo),
          ),
          BlocProvider(
            create: (context) => FetachMyAnmilesCubit(_anmilesRepo),
          ),
          BlocProvider(
            create: (context) => DeletAnmilesCubit(_anmilesRepo),
          ),
        ],
        child: Scaffold(
            body: BodyMyAdd(
          userEntitymodel: userEntitymodel,
        )));
  }
}
