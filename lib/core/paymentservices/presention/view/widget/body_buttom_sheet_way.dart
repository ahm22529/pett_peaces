import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/paymentservices/presention/manager/cubit/checkout_cubit.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/iteam_way.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class BodyBottomSheetOfWay extends StatelessWidget {
  const BodyBottomSheetOfWay({
    super.key,
    required this.userEntitymodel,
    required this.endpoint,
  });
  final UserEntity userEntitymodel;
  final String endpoint;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "أختر طريقة الدفع المناسبة",
          style: AppStyles.styleMedium16(context)
              .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 20,
        ),
        CreditCardWidget(
          onTap: () {
            BlocProvider.of<CheckoutCubit>(context).getcheckout(
                endpoint: endpoint,
                token: userEntitymodel.token,
                data: {"payment_type": "card"});
          },
          text1: 'Credit Card',
          image: 'Asset/image/atm-card 1.png',
        ),
        const SizedBox(
          height: 16,
        ),
        CreditCardWidget(
          onTap: () {
            BlocProvider.of<CheckoutCubit>(context).getcheckout(
                endpoint: "courses/1/checkout",
                token: userEntitymodel.token,
                data: {"payment_type": "cach"});
          },
          text1: 'الدفع نقدي',
          image: 'Asset/image/money 1.png',
        ),
      ],
    );
  }
}
