import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/newpassword/data/repo/update_repo_imp.dart';
import 'package:pett_peaces/fetures/newpassword/domin/repo/update_repo.dart';
import 'package:pett_peaces/fetures/newpassword/presention/manager/cubit/updatepassword_cubit.dart';
import 'package:pett_peaces/fetures/newpassword/presention/view/widget/body_bloc_conseupdat.dart';

class Newpassword extends StatelessWidget {
  const Newpassword({super.key, required this.email, required this.opt});
  final String email, opt;
  @override
  Widget build(BuildContext context) {
    return  NewPassWord(email: email, opt:opt,);
  }
}

class NewPassWord extends StatefulWidget {
  const NewPassWord({super.key, required this.email, required this.opt});
  final String email, opt;
  @override
  State<NewPassWord> createState() => _NewPassWordState();
}

class _NewPassWordState extends State<NewPassWord> {
  UpdateRepo updateRepo = UpdatePassWordImp();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdatepasswordCubit(updateRepo),
      child:  Scaffold(
          body: RestorAccount(
        email: widget.email, opt:widget.opt,
      )),
    );
  }
}
