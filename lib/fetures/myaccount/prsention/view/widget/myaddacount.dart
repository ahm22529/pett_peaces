import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pett_peaces/fetures/anmailes/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/anmailes/domin/repo/repo.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/addanmiles/add_amiles_cubit.dart';

import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/body_my_add.dart';

class MyAccountAdd extends StatelessWidget {
  final AnmilesRepo _anmilesRepo = AnimelsRepoImp();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AddAmilesCubit(_anmilesRepo),
        child: Scaffold(body: BodyMyAdd()));
  }
}
