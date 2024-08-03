import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/backgroundcontiner.dart';

import 'package:pett_peaces/fetures/singup/data/reop/sigup_repo_Imp.dart';
import 'package:pett_peaces/fetures/singup/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/singup/presention/maager/cubit/varify_email_cubit.dart';

import 'package:pett_peaces/fetures/singup/presention/view/widget/varfy_email_bloc_consumer.dart';

class Varifyemail extends StatefulWidget {
  final String token, email;

  const Varifyemail({super.key, required this.token, required this.email});
  @override
  State<Varifyemail> createState() => _VarifyemailState();
}

class _VarifyemailState extends State<Varifyemail> {
  SingupRepo singupRepo = Siguprepoimp();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VarifyEmailCubit(singupRepo),
      child: Scaffold(
        body: backgroundrest(
          widget: VarfyEmailBlocConsumer(
            token: widget.token,
            email: widget.email,
          ),
          pos: MediaQuery.of(context).size.height * .1,
        ),
      ),
    );
  }
}
