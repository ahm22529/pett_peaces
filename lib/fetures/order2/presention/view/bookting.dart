import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/box/data/repo/repo_Imp.dart';
import 'package:pett_peaces/fetures/box/domain/repo/repo.dart';

import 'package:pett_peaces/fetures/order2/data/repo/repo_imp.dart';
import 'package:pett_peaces/fetures/order2/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/order2/presention/manager/cubit/order_cubit.dart';

import 'package:pett_peaces/fetures/order2/presention/view/widget/bodybook.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Bookting extends StatefulWidget {
  final UserEntity userEntitymodel;

  const Bookting({super.key, required this.userEntitymodel});

  @override
  State<Bookting> createState() => _BooktingState();
}

class _BooktingState extends State<Bookting> {
  Orderrepo orderrepo = Orderrepoimp();
  Boxrepo boxrepo = BoxRepoImp();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => OrderCubit(orderrepo),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset("Asset/image/Back.png")),
          title: Text(
            " طلباتي",
            style: AppStyles.styleRegular24(context)
                .copyWith(fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: BodyBookting(
          userEntitymodel: widget.userEntitymodel,
        ),
      ),
    );
  }
}
