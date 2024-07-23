import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/function/builderrorbar.dart';
import 'package:pett_peaces/fetures/contactus/data/model/inputusermodel.dart';
import 'package:pett_peaces/fetures/contactus/prsention/manger/cubit/contact_cubit.dart';
import 'package:pett_peaces/fetures/contactus/prsention/view/widget/buttomshowalert.dart';
import 'package:pett_peaces/fetures/contactus/prsention/view/widget/textfiledreson.dart';

import '../../../../../core/utiles/sttyel.dart';

class BodyContactwithpices extends StatefulWidget {
  @override
  State<BodyContactwithpices> createState() => _BodyContactwithpicesState();
}

class _BodyContactwithpicesState extends State<BodyContactwithpices> {
  String name = "";
  String email = "";
  String sub = "";
  String comm = "";
  @override
  Widget build(BuildContext context) {
    return BlocListener<ContactCubit, ContactState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is Contactsucess) {
          buildErrorBar(context, state.errmas);
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "    الأسم بالكامل      ",
                style: AppStyles.styleMedium16(context).copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Textformfieldresoncon(
                maxline: 1,
                initialValue: '',
                onChanged: (String v) {
                  setState(() {
                    name = v;
                  });
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "    البريد الإلكتروني      ",
                style: AppStyles.styleMedium16(context).copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Textformfieldresoncon(
                initialValue: '',
                maxline: 1,
                onChanged: (String v) {
                  setState(() {
                    email = v;
                  });
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "     العنوان      ",
                style: AppStyles.styleMedium16(context).copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Textformfieldresoncon(
                maxline: 1,
                initialValue: '',
                onChanged: (String v) {
                  setState(() {
                    sub = v;
                  });
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "     الرساله      ",
                style: AppStyles.styleMedium16(context).copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Textformfieldresoncon(
                maxline: 5,
                initialValue: '',
                onChanged: (String v) {
                  setState(() {
                    comm = v;
                  });
                },
              ),
              SizedBox(
                height: 32,
              ),
              buttomshowalert(
                contactdata: Contactdata(
                    name: name, email: email, contact: comm, sub: sub),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
