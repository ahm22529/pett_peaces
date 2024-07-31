import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/mating/data/repo/repo.dart';
import 'package:pett_peaces/fetures/mating/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/mating/prsention/manager/Add_remove/add_or_remove_cubit.dart';
import 'package:pett_peaces/fetures/mating/prsention/manager/getmating/get_mating_cubit.dart';
import 'package:pett_peaces/fetures/mating/prsention/view/widget/bodymatching.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Mating extends StatefulWidget {
  const Mating({super.key, required this.userEntitymodel});
  final UserEntitymodel userEntitymodel;
  @override
  State<Mating> createState() => _MatingState();
}

class _MatingState extends State<Mating> {
  Matingrepo matingrepo = Matingrepoimp();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetMatingCubit(matingrepo),
        ),
        BlocProvider(
          create: (context) => AddOrRemoveCubit(matingrepo),
        )
      ],
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset("Asset/image/Back.png")),
          title: Text(
            " التزاوج",
            style: AppStyles.styleRegular24(context)
                .copyWith(fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body:  BodyMating(
          userEntitymodel: widget.userEntitymodel,
        ),
      ),
    );
  }
}
