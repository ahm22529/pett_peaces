import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

import 'package:pett_peaces/fetures/aboutus/presention/view/widget/bodyaboutus.dart';
import 'package:pett_peaces/fetures/poilce/data/repo/repo_imp.dart';
import 'package:pett_peaces/fetures/poilce/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/poilce/presention/manger/cubit/policy_cubit.dart';

class Aboutus extends StatefulWidget {
  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  PolicyRepo policyRepo = PolicyrepImp();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PolicyCubit(policyRepo),
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset("Asset/image/Back.png")),
          title: Text(
            " حول خدمات Petty Peace",
            style: AppStyles.styleRegular24(context)
                .copyWith(fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: Bodyaboutus(),
      ),
    );
  }
}
