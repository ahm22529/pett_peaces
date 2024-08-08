import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/function/builderrorbar.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/changepassword/preention/manager/cubit/updaepass_cubit.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/password_text_filed.dart';
import 'package:pett_peaces/fetures/newpassword/presention/view/widget/password_filed_new.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class BodyChangePassword extends StatefulWidget {
  const BodyChangePassword({Key? key, required this.userEntity})
      : super(key: key);
  final UserEntity userEntity;
  @override
  State<BodyChangePassword> createState() => _BodyChangePasswordState();
}

class _BodyChangePasswordState extends State<BodyChangePassword> {
  String password = '';
  String confirm = '';
  String old = '';
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdaepassCubit, UpdaepassState>(
      listener: (context, state) {
        if (state is Updaepasssucess) {
          buildErrorBar(context, "تم تغير كلمه المرور بنجاح ");
        }
        if (state is Updaepassfaulier) {
          return buildSucessbar(context, "كلمه المرور السابقه خاطئه");
        }
      },
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Text(
                  "كلمة المرور الحالية",
                  style: AppStyles.styleMedium18(context),
                ),
                const SizedBox(height: 16),
                PasswordFiled(
                  onSaved: (v) {
                    old = v ?? '';
                  },
                ),
                const SizedBox(height: 16),
                PasswordFieldNew(
                  globalKey: globalKey,
                  onSaved1: (String? v) {
                    password = v ?? '';
                  },
                  onSaved2: (String? v) {
                    confirm = v ?? '';
                  },
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Custombuttom(
                      titel: "تأكيد",
                      onPressed: () {
                        if (globalKey.currentState?.validate() ?? false) {
                          BlocProvider.of<UpdaepassCubit>(context).UpdaPass(
                              endpoint: "profile/update/password",
                              token: widget.userEntity.id,
                              data: {
                                "old_password": old,
                                "password": password,
                                "password_confirmation": confirm
                              });
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
