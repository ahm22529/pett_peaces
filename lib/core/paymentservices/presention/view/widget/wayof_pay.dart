import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/paymentservices/data/repo_imp.dart';
import 'package:pett_peaces/core/paymentservices/domain/repo.dart';
import 'package:pett_peaces/core/paymentservices/presention/manager/cubit/checkout_cubit.dart';
import 'package:pett_peaces/core/paymentservices/presention/view/widget/body_buttom_sheet_way.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Wayofpay extends StatefulWidget {
  final UserEntitymodel userEntitymodel;
  final String endpoint;
  const Wayofpay(
      {super.key, required this.userEntitymodel, required this.endpoint});
  @override
  State<Wayofpay> createState() => _WayofpayState();
}

class _WayofpayState extends State<Wayofpay> {
  CheckoutRepo checkoutRepo = CheckoutrepoImp();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CheckoutCubit(checkoutRepo),
      child: Container(
        height: MediaQuery.of(context).size.height * .3,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: BodyBottomSheetOfWay(
            userEntitymodel: widget.userEntitymodel,
            endpoint: widget.endpoint,
          ),
        ),
      ),
    );
  }
}
