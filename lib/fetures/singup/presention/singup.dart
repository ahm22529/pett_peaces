import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/singup/data/reop/sigup_repo_Imp.dart';
import 'package:pett_peaces/fetures/singup/domain/repo/sing_up_repo.dart';
import 'package:pett_peaces/fetures/singup/presention/maager/sinupcubit/signup_cubit.dart';

import 'package:pett_peaces/fetures/singup/presention/view/widget/signup_view_body_bloc_consumer.dart';

class Singup extends StatefulWidget {
  const Singup({super.key});

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  SingupRepo singupRepo = Siguprepoimp();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(singupRepo),
      child: const Scaffold(
        body: SignupViewBodyBlocConsumer(),
      ),
    );
  }
}
