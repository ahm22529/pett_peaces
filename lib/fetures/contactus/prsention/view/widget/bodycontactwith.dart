import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/function/builderrorbar.dart';
import 'package:pett_peaces/fetures/contactus/data/model/inputusermodel.dart';
import 'package:pett_peaces/fetures/contactus/prsention/manger/cubit/contact_cubit.dart';
import 'package:pett_peaces/fetures/contactus/prsention/view/widget/buttomshowalert.dart';
import 'package:pett_peaces/fetures/contactus/prsention/view/widget/form_send.dart';
import 'package:pett_peaces/fetures/contactus/prsention/view/widget/textfiledreson.dart';

import '../../../../../core/utiles/sttyel.dart';

class BodyContactwithpices extends StatefulWidget {
  @override
  State<BodyContactwithpices> createState() => _BodyContactwithpicesState();
}

class _BodyContactwithpicesState extends State<BodyContactwithpices> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<ContactCubit, ContactState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is Contactsucess) {
          buildErrorBar(context, state.errmas);
        }
        if (state is Contactfauiler) {}
      },
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Formsend()
            ],
          ),
        ),
      ),
    );
  }
}
