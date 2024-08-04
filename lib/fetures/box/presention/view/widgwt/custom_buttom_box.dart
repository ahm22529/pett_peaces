import 'package:flutter/material.dart';
import 'package:pett_peaces/core/paymentservices/presention/view/widget/wayof_pay.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class BotttomPay extends StatelessWidget {
  const BotttomPay({
    super.key,
    required this.userEntitymodel,
  });

  final UserEntity userEntitymodel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Custombuttom(
            titel: "إدفع",
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => Wayofpay(
                        userEntitymodel: userEntitymodel,
                        endpoint: 'cart/checkout',
                      ));
            })
      ],
    );
  }
}
