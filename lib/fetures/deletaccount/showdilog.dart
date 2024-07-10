import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

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
            "هل أنت متاكد من حذف حسابك",
            style:
                AppStyles.styleMedium18(context).copyWith(color: Colors.black),
          ),
          SizedBox(
            height: 32,
          ),
          twobuttom(),
        ],
      ),
    );
  }
}

class twobuttom extends StatelessWidget {
  const twobuttom({
    super.key,
  });

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
  const buttomcancel({
    super.key,
  });

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
            'الغاء',
            style: AppStyles.styleMedium18(context).copyWith(color: Colors.red),
          ),
        ),
      ),
    );
  }
}

class iteamsend extends StatelessWidget {
  const iteamsend({
    super.key,
  });

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
          onPressed: () {},
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
