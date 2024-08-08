import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pett_peaces/fetures/anmailes/data/repo/repoimp.dart';

import 'package:pett_peaces/fetures/anmailes/domin/repo/repo.dart';

import 'package:pett_peaces/fetures/anmailes/presetion/manager/deletmyanmiles/delet_anmiles_cubit.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/fetechmyanmiles/fetach_my_anmiles_cubit.dart';
import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/bodymyaccount.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Myaccount extends StatefulWidget {
  final AnmilesEntity anmilesEntity;
  final UserEntity userEntitymodel;
  
  const Myaccount(
      {super.key, required this.anmilesEntity, required this.userEntitymodel});
  @override
  _MyaccountState createState() => _MyaccountState();
}

class _MyaccountState extends State<Myaccount> {
  AnmilesRepo anmilesRepo = AnimelsRepoImp();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => DeletAnmilesCubit(anmilesRepo),
          ),
          BlocProvider(create: (context) => FetachMyAnmilesCubit(anmilesRepo))
        ],
        child: Scaffold(
            body: Bodymyaccount(
          anmilesEntityn: widget.anmilesEntity,
          userEntitymodell: widget.userEntitymodel,
        )));
  }
}
