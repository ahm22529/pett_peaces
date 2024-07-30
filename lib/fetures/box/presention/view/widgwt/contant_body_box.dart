import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custom_widget_fauiler.dart';
import 'package:pett_peaces/core/utiles/widget/load_widget.dart';
import 'package:pett_peaces/fetures/box/presention/manager/cubit/getbox_cubit.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/custombuttombox.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/detailesorder.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/listtitelorder.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class ContantBodyBox extends StatefulWidget {
  final UserEntitymodel userEntitymodel;

  const ContantBodyBox({super.key, required this.userEntitymodel});
  @override
  State<ContantBodyBox> createState() => _ContantBodyBoxState();
}

class _ContantBodyBoxState extends State<ContantBodyBox> {
  void initState() {
    super.initState();
    BlocProvider.of<GetboxCubit>(context)
        .getBox(endpoint: "cart/show", token: widget.userEntitymodel.token);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetboxCubit, GetboxState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is Getboxsucess) {
          if (state.boxEntity.product.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                      "Asset/image/Natural farm products in a kraft bag.png"),
                  //, ignore: prefer_const_constructors
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "السله فارغه",
                    style: AppStyles.styleRegular24(context),
                  ),
                ],
              ),
            );
          }
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  listiteamorder(
                    iteam: state.boxEntity.product,
                    userEntitymodel: widget.userEntitymodel,
                  ),
                  Divider(
                    height: 48,
                    color: const Color(0xffd9d9d980).withOpacity(.5),
                  ),
                  detailesorder(
                    count: state.boxEntity.count.toString(),
                    total: state.boxEntity.total.toString(),
                    taxpr: state.boxEntity.dis.toString(),
                    userEntitymodel: widget.userEntitymodel,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BotttomPay(
                    userEntitymodel: widget.userEntitymodel,
                  )
                ],
              ),
            ),
          );
        } else if (state is Getboxfauiler) {
          return const CustomWidgetfauier();
        } else {
          return const Loadwidgwt();
        }
      },
    );
  }
}
