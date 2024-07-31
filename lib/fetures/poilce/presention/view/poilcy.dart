import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/poilce/data/repo/repo_imp.dart';
import 'package:pett_peaces/fetures/poilce/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/poilce/presention/manger/cubit/policy_cubit.dart';
import 'package:pett_peaces/fetures/poilce/presention/view/widget/bodypolicy.dart';

class policy extends StatefulWidget {
  @override
  State<policy> createState() => _policyState();
}

class _policyState extends State<policy> {
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
            "سياسة الخصوصية",
            style: AppStyles.styleRegular24(context)
                .copyWith(fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: BodyPolicy(),
      ),
    );
  }
}
