import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/contactus/data/repo/contact_rep.dart';
import 'package:pett_peaces/fetures/contactus/data/repo/contact_repo_imp.dart';
import 'package:pett_peaces/fetures/contactus/prsention/manger/cubit/contact_cubit.dart';
import 'package:pett_peaces/fetures/contactus/prsention/view/widget/body_contact_with.dart';

class Contactwithpices extends StatefulWidget {
  const Contactwithpices({super.key});

  @override
  State<Contactwithpices> createState() => _ContactwithpicesState();
}

class _ContactwithpicesState extends State<Contactwithpices> {
  ContactusRepo contactusRepo = ContactusRepoimp();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactCubit(contactusRepo),
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset("Asset/image/Back.png")),
          title: Text(
            " تواصل معنا",
            style: AppStyles.styleRegular24(context)
                .copyWith(fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(child: BodyContactwithpices()),
      ),
    );
  }
}
