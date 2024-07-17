import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pett_peaces/core/utiles/widget/custombackground.dart';
import 'package:pett_peaces/fetures/newpassword/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/newpassword/domin/repo/repo.dart';
import 'package:pett_peaces/fetures/newpassword/presention/manager/cubit/updatepassword_cubit.dart';
import 'package:pett_peaces/fetures/newpassword/presention/view/widget/body_bloc_conseupdat.dart';

import 'package:pett_peaces/fetures/newpassword/presention/view/widget/bodynewspassword.dart';
import 'package:pett_peaces/fetures/newpassword/presention/view/widget/shape.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/bodyenteremail.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/customdivider.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/enteremail.dart';

class Newpassword extends StatelessWidget {
  const Newpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const NewPassWord();
  }
}

class NewPassWord extends StatefulWidget {
  const NewPassWord({super.key});

  @override
  State<NewPassWord> createState() => _NewPassWordState();
}

class _NewPassWordState extends State<NewPassWord> {
  UpdateRepo updateRepo = UpdatePassWordImp();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdatepasswordCubit(updateRepo),
      child: const Scaffold(
        body: RestorAccount()
      ),
    );
  }
}
