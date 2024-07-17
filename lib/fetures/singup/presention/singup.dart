import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/singup/data/reop/siguprepoImp.dart';
import 'package:pett_peaces/fetures/singup/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/singup/presention/maager/signup_cubit.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/background.dart';

import 'package:pett_peaces/fetures/singup/presention/view/eidget/imagedog.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/signup_view_body_bloc_consumer.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/singupcontiner.dart';

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
      child: Scaffold(
        body: SignupViewBodyBlocConsumer(),
      ),
    );
  }
}
