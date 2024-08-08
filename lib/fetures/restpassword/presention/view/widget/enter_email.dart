import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/restpassword/data/repo/check_repo_imp.dart';
import 'package:pett_peaces/fetures/restpassword/domain/repo/check_repo.dart';
import 'package:pett_peaces/fetures/restpassword/presention/manager/cubit/checkemail_cubit.dart';

import 'package:pett_peaces/fetures/restpassword/presention/view/widget/body_enter_email_bloc_consumer.dart';

class Enteremailb extends StatefulWidget {
  const Enteremailb({super.key, required this.email});
  final String email;
  @override
  State<Enteremailb> createState() => _EnteremailbState();
}

class _EnteremailbState extends State<Enteremailb> {
  RestPasswordRepo restPasswordRepo = RestPassWordRepoImp();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CheckemailCubit(restPasswordRepo),
      child: const Scaffold(body: CheckemailBlocConsiumer()),
    );
  }
}
