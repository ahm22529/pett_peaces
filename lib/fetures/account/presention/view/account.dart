import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombackground.dart';
import 'package:pett_peaces/fetures/account/presention/view/widget/bodyaccount.dart';
import 'package:pett_peaces/fetures/anmailes/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/anmailes/domin/repo/repo.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/deletmyanmiles/delet_anmiles_cubit.dart';

class Acountff extends StatefulWidget {
  const Acountff({super.key});

  @override
  State<Acountff> createState() => _AcountffState();
}

class _AcountffState extends State<Acountff> {
  AnmilesRepo anmilesRepo = AnimelsRepoImp();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => DeletAnmilesCubit(anmilesRepo))
      ],
      child: Scaffold(
        body: Custombackground(
            image: 'Asset/image/accountback.png', wideget: BodyAccount()),
      ),
    );
  }
}
