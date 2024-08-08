import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/restpassword/data/repo/check_repo_imp.dart';
import 'package:pett_peaces/fetures/restpassword/domain/repo/check_repo.dart';
import 'package:pett_peaces/fetures/restpassword/presention/manager/cubit/checkemail_cubit.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/body_rest_basssword_bloc_consumer.dart';


class Restpassword extends StatefulWidget {
  const Restpassword({super.key, required this.email});
  final String email;
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
          child: CheckBlocConsiumer(
            email: widget.email,
          )),
    );
  }
}
