import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/contactus/data/model/inputusermodel.dart';
import 'package:pett_peaces/fetures/contactus/prsention/manger/cubit/contact_cubit.dart';

class Buttomshowalert extends StatelessWidget {
  const Buttomshowalert({
    super.key,
    required this.contactdata,
    required this.globalKey,
  });
  final Contactdata contactdata;
  final GlobalKey<FormState> globalKey;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Custombuttom(
          titel: "ارسال",
          onPressed: () {
            if (globalKey.currentState!.validate()) {
              BlocProvider.of<ContactCubit>(context)
                  .contact(endpoint: "contact-us", data: {
                "comment": contactdata.contact,
                "subject": contactdata.sub,
                "email": contactdata.email,
                "full_name": contactdata.name
              });
            }
          },
        ),
      ],
    );
  }
}
