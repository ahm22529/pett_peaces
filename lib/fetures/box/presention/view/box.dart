import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/box/data/repo/repo_Imp.dart';
import 'package:pett_peaces/fetures/box/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/box/presention/manager/addtobox/add_box_cubit.dart';
import 'package:pett_peaces/fetures/box/presention/manager/cubit/getbox_cubit.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/body_box.dart';
import 'package:pett_peaces/fetures/courses/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/courses/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Box extends StatefulWidget {
  final UserEntitymodel userEntitymodel;
  const Box({super.key, required this.userEntitymodel});
  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  Boxrepo boxrepo = BoxRepoImp();
  CourseRepo courseRepo = CorseRepoImp();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddBoxCubit(boxrepo),
        ),
        BlocProvider(
          create: (context) => GetboxCubit(boxrepo),
        ),
      ],
      child: Scaffold(
        body: Bodybox(
          userEntitymodel: widget.userEntitymodel,
        ),
      ),
    );
  }
}
