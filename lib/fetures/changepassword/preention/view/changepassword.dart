import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/changepassword/data/repo/repo_imp.dart';
import 'package:pett_peaces/fetures/changepassword/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/changepassword/preention/manager/cubit/updaepass_cubit.dart';
import 'package:pett_peaces/fetures/changepassword/preention/view/widget/bodychangepassword.dart';

class Changepassword extends StatefulWidget {
  @override
  State<Changepassword> createState() => _ChangepasswordState();
}

class _ChangepasswordState extends State<Changepassword> {
  ChangepassRepo changepassRepo = ChangRepoImp();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdaepassCubit(changepassRepo),
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset("Asset/image/Back.png")),
          title: Text(
            "  تغير كلمة المرور",
            style: AppStyles.styleRegular24(context)
                .copyWith(fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: BodyChangePassword(),
      ),
    );
  }
}
