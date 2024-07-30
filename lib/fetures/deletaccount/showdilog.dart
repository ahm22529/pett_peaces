import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/passswordsingup.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

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
          twobuttom(),
        ],
      ),
    );
  }
}

class twobuttom extends StatelessWidget {
  const twobuttom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iteamsend(),
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
  const iteamsend({super.key});

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
                return ConfirmationDialog();
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
  const ConfirmationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      content: ConfirmationDialogContent(),
    );
  }
}

class ConfirmationDialogContent extends StatefulWidget {
  const ConfirmationDialogContent({super.key});

  @override
  State<ConfirmationDialogContent> createState() =>
      _ConfirmationDialogContentState();
}

class _ConfirmationDialogContentState extends State<ConfirmationDialogContent> {
  String pass = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "يرجى إدخال كلمه المرور :",
          style: AppStyles.styleMedium18(context).copyWith(color: Colors.black),
        ),
        SizedBox(height: 16),
        PasswordFieldvaild(onSaved: (s) {
          setState(() {
            pass = s!;
          });
        }),
        SizedBox(height: 32),
        Delbuttom(
          onPressed: () {},
        ),
      ],
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
