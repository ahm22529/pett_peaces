
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/mydata/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/mydata/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/mydata/prsention/view/manager/cubit/update_cubit.dart';
import 'package:pett_peaces/fetures/mydata/prsention/view/widget/body_my_data.dart';

import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Mydata extends StatefulWidget {
  final UserEntitymodel userEntitymodel;

  const Mydata({super.key, required this.userEntitymodel});

  @override
  State<Mydata> createState() => _MydataState();
}

class _MydataState extends State<Mydata> {
  MydataRepo mydataRepo = MydataRepoImp();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdateCubit(mydataRepo),
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset("Asset/image/Back.png")),
          title: Text(
            " بياناتي",
            style: AppStyles.styleRegular24(context)
                .copyWith(fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: BodyMyData(
          userEntitymodel: widget.userEntitymodel,
        ),
      ),
    );
  }
}

