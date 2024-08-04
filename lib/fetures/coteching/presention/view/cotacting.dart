import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/coteching/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/coteching/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/coteching/presention/manager/featchallcotchig/fetachingallcout_cubit.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/bodycoting.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Cotching extends StatefulWidget {
  final UserEntity userEntitymodel;

  const Cotching({super.key, required this.userEntitymodel});
  @override
  State<Cotching> createState() => _CotchingState();
}

class _CotchingState extends State<Cotching> {
  CoatchingRepo coatchingRepo = CoatingRepoImp();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetachingallcoutCubit(coatchingRepo),
      child: Scaffold(
        body: BodyCoating(
          userEntitymodel: widget.userEntitymodel,
        ),
      ),
    );
  }
}
