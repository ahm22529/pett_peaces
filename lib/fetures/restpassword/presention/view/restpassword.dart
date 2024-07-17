import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pett_peaces/core/utiles/widget/custombackground.dart';
import 'package:pett_peaces/fetures/restpassword/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/restpassword/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/restpassword/presention/manager/cubit/checkemail_cubit.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/backgroundcontiner.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/bodyrestbassswordblocconsumer.dart';

import 'package:pett_peaces/fetures/restpassword/presention/view/widget/bodyrestpassword.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/enteremail.dart';

class Restpassword extends StatefulWidget {
  const Restpassword({super.key});

  @override
  State<Restpassword> createState() => _RestpasswordState();
}

class _RestpasswordState extends State<Restpassword> {
  RestPasswordRepo restPasswordRepo = RestPassWordRepoImp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => CheckemailCubit(restPasswordRepo),
        child: CheckBlocConsiumer()
      ),
    );
  }
}
