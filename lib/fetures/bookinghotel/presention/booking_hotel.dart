import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/bookinghotel/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/bookinghotel/domain/repo/bookingrepo.dart';
import 'package:pett_peaces/fetures/bookinghotel/presention/manager/cubit/pending_cubit.dart';
import 'package:pett_peaces/fetures/bookinghotel/presention/view/widget/body_book.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Order extends StatefulWidget {
  final UserEntitymodel userEntitymodel;

  const Order({super.key, required this.userEntitymodel});
  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  Bookingrepo bookingrepo = Bookingrepoimp();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PendingCubit(bookingrepo),
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset("Asset/image/Back.png")),
          title: Text(
            " حجوزاتي",
            style: AppStyles.styleRegular24(context)
                .copyWith(fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: BodyBook(
          userEntitymodelb: widget.userEntitymodel,
        ),
      ),
    );
  }
}
