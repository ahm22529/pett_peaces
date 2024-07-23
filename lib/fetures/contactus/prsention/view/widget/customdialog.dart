import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/contactus/data/model/inputusermodel.dart';
import 'package:pett_peaces/fetures/contactus/data/repo/repo.dart';
import 'package:pett_peaces/fetures/contactus/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/contactus/prsention/manger/cubit/contact_cubit.dart';

class CustomDialog extends StatefulWidget {
  const CustomDialog({super.key, required this.contactdata});
  final Contactdata contactdata;

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  ContactusRepo contactusRepo = ContactusRepoimp();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactCubit(contactusRepo),
      child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "هل أنت متاكد من الإرسال",
              style: AppStyles.styleMedium18(context)
                  .copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 32,
            ),
            twobuttom(
              contactdata: widget.contactdata,
            ),
          ],
        ),
      ),
    );
  }
}

class twobuttom extends StatelessWidget {
  const twobuttom({
    super.key,
    required this.contactdata,
  });
  final Contactdata contactdata;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iteamsend(
          contactdata: contactdata,
        ),
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
              side: const BorderSide(color: Colors.orange),
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
    required this.contactdata,
  });
  final Contactdata contactdata;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          onPressed: () async {
            await BlocProvider.of<ContactCubit>(context)
                .contact(endpoint: "contact-us", data: {
              "comment": contactdata.contact,
              "subject": contactdata.sub,
              "email": contactdata.email,
              "full_name": contactdata.name
            });
            Navigator.pop(context);
          },
          child: Text(
            'ارسال',
            style:
                AppStyles.styleMedium18(context).copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
