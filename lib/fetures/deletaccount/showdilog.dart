import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/function/builderrorbar.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/changepassword/data/repo/repo_imp.dart';
import 'package:pett_peaces/fetures/changepassword/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/changepassword/preention/manager/cubit/updaepass_cubit.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/login.dart';
import 'package:pett_peaces/fetures/mydata/prsention/view/manager/cubit/update_cubit.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/singup/presention/view/widget/passswordsingup.dart';
import 'package:pett_peaces/fetures/splash/presention/view/splash_view.dart';

class DeletAccount extends StatelessWidget {
  final UserEntity userEntity;

  const DeletAccount({super.key, required this.userEntity});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomDialog(userEntity:userEntity ,) ,
    );
  }
}

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key, required this.userEntity});
  final UserEntity userEntity;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "هل أنت متأكد من حذف حسابك؟",
            style:
                AppStyles.styleMedium18(context).copyWith(color: Colors.black),
          ),
          SizedBox(height: 32),
          twobuttom(
            userEntity: userEntity,
          ),
        ],
      ),
    );
  }
}

class twobuttom extends StatelessWidget {
  const twobuttom({super.key, required this.userEntity});
  final UserEntity userEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iteamsend(
          userEntity: userEntity,
        ),
        buttomcancel(),
      ],
    );
  }
}

class buttomcancel extends StatelessWidget {
  const buttomcancel({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Colors.red),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'إلغاء',
            style: AppStyles.styleMedium18(context).copyWith(color: Colors.red),
          ),
        ),
      ),
    );
  }
}

class iteamsend extends StatelessWidget {
  const iteamsend({super.key, required this.userEntity});
  final UserEntity userEntity;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          onPressed: () {
            // Replace the current dialog with a new one
            Navigator.of(context).pop(); // Close the current dialog
            showDialog(
              context: context,
              builder: (context) {
                return ConfirmationDialog(
                  userEntity: userEntity,
                );
              },
            );
          },
          child: Text(
            "حذف",
            style:
                AppStyles.styleMedium18(context).copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog({super.key, required this.userEntity});
  final UserEntity userEntity;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      content: ConfirmationDialogContent(
        userEntity: userEntity,
      ),
    );
  }
}

class ConfirmationDialogContent extends StatefulWidget {
  final UserEntity userEntity;
  const ConfirmationDialogContent({super.key, required this.userEntity});

  @override
  State<ConfirmationDialogContent> createState() =>
      _ConfirmationDialogContentState();
}

class _ConfirmationDialogContentState extends State<ConfirmationDialogContent> {
  String pass = '';
  ChangepassRepo changepassRepo = ChangRepoImp();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdaepassCubit(changepassRepo),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "يرجى إدخال كلمه المرور :",
            style:
                AppStyles.styleMedium18(context).copyWith(color: Colors.black),
          ),
          SizedBox(height: 16),
          PasswordFieldvaild(onSaved: (s) {
            setState(() {
              pass = s!;
            });
          }),
          SizedBox(height: 32),
          BlocListener<UpdaepassCubit, UpdaepassState>(
            listener: (context, state) {
              // TODO: implement listener
              if (state is Updatefauiler) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (builder) => LoginView()));
                buildSucessbar(context, "تاكد من كلمه المرور");
              }
              if (state is Updaepasssucess) {
                buildErrorBar(context, "تم حذف الحساب ");
              }
            },
            child: Delbuttom(
              onPressed: () {
                print(pass);
                BlocProvider.of<UpdaepassCubit>(context).delet(
                    endpoint: "profile/delete",
                    token: widget.userEntity.token,
                    data: {"password": pass});
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (builder) => Splashview()));
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Delbuttom extends StatelessWidget {
  const Delbuttom({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              onPressed: onPressed,
              child: Text(
                "حذف",
                style: AppStyles.styleMedium18(context)
                    .copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
