import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/function/builderrorbar.dart';
import 'package:pett_peaces/fetures/box/presention/manager/addtobox/add_box_cubit.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/buttom_cobon.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/cobon_text_filed.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class cobeniteam extends StatefulWidget {
  const cobeniteam({
    super.key,
    required this.userEntitymodel,
  });
  final UserEntitymodel userEntitymodel;
  @override
  State<cobeniteam> createState() => _cobeniteamState();
}

class _cobeniteamState extends State<cobeniteam> {
  String code = '';
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: cobontextfiled(
            onChanged: (String v) {
              setState(() {
                code = v;
              });
            },
            name: 'أضف الكوبون هنا',
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          flex: 1,
          child: BlocListener<AddBoxCubit, AddBoxState>(
            listener: (context, state) {
              // TODO: implement listener
              if (state is AddBoxfailer) {
                buildErrorBar(context, "الكود خطا ");
              }
            },
            child: GestureDetector(
              onTap: () {
                BlocProvider.of<AddBoxCubit>(context).addproduct(
                    token: widget.userEntitymodel.token,
                    endpoint: "cart/check-coupon",
                    data: {"code": "123"});
              },
              child: Buttomcobaon(),
            ),
          ),
        ),
      ],
    );
  }
}
