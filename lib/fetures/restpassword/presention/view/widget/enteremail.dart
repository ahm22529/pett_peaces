import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/custombackground.dart';
import 'package:pett_peaces/fetures/restpassword/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/restpassword/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/restpassword/presention/manager/cubit/checkemail_cubit.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/backgroundcontiner.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/bodyenteremail.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/bodyenteremailblocconsumer.dart';

class enteremailb extends StatefulWidget {
  const enteremailb({super.key});

  @override
  State<enteremailb> createState() => _enteremailbState();
}

class _enteremailbState extends State<enteremailb> {
  RestPasswordRepo restPasswordRepo = RestPassWordRepoImp();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CheckemailCubit(restPasswordRepo),
      child: Scaffold(
          body:CheckemailBlocConsiumer()),
    );
  }
}
