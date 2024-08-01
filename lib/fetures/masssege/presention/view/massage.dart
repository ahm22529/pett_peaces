import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/masssege/data/repo/massage_repo_imp.dart';
import 'package:pett_peaces/fetures/masssege/domain/repo/massage_repo.dart';
import 'package:pett_peaces/fetures/masssege/presention/manager/cubit/massage_cubit.dart';

import 'package:pett_peaces/fetures/masssege/presention/view/widget/platformui.dart';

class Massage extends StatefulWidget {
  const Massage({super.key});

  @override
  State<Massage> createState() => _MassageState();
}

class _MassageState extends State<Massage> {
  MassageRepo massageRepo = MassageRepoImp();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MassageCubit(massageRepo: massageRepo),
      child: const Scaffold(
        body: Platformuimas(),
      ),
    );
  }
}
