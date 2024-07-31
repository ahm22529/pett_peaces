import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/body_box.dart';
import 'package:pett_peaces/fetures/courses/presention/manger.dart/cubit/checkout_cubit.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class BotttomPay extends StatelessWidget {
  const BotttomPay({
    super.key,
    required this.userEntitymodel,
  });

  final UserEntitymodel userEntitymodel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocListener<CheckoutCubit, CheckoutState>(
          listener: (context, state) {
            if (state is Checkoutsucess) {}
          },
          child: Custombuttom(
              titel: "إدفع",
              onPressed: () {
                BlocProvider.of<CheckoutCubit>(context).getcheckout(
                    endpoint: "cart/checkout",
                    token: userEntitymodel.token,
                    data: {"payment_type": "card", "coupon_code": ""});
              }),
        )
      ],
    );
  }
}
