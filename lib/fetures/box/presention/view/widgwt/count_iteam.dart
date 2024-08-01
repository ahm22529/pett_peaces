import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/box/presention/manager/addtobox/add_box_cubit.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/add_miuns.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Countiteam extends StatefulWidget {
  final String prices;
  final UserEntitymodel userEntitymodel;
  final ProducEntity producEntity;
  final int count;
  const Countiteam({
    super.key,
    required this.prices,
    required this.userEntitymodel,
    required this.producEntity,
    required this.count,
  });

  @override
  State<Countiteam> createState() => _CountiteamState();
}

class _CountiteamState extends State<Countiteam> {
  late int numb;
  @override
  void initState() {
    super.initState();
    numb = widget.count ?? 1;
  }

  double get _price {
    // تحويل السعر من String إلى double
    return double.tryParse(widget.prices) ?? 0.0;
  }

  @override
  Widget build(BuildContext context) {
    double totalPrice = _price * numb; // حساب السعر الإجمالي

    return Row(
      children: [
        Text(
          totalPrice.toString(),
          style: AppStyles.styleMedium18(context)
              .copyWith(color: const Color(0xffF78E32)),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            setState(() {
              BlocProvider.of<AddBoxCubit>(context).addproduct(
                token: widget.userEntitymodel.token,
                endpoint: "cart/add",
                data: {"product_id": widget.producEntity.id},
              );
              numb++;
            });
          },
          child: const AddMiuns(
            iconData: Icons.add,
          ),
        ),
        const SizedBox(width: 5),
        Text(numb.toString()),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: () {
            setState(() {
              if (numb > 1) {
                numb--;
                BlocProvider.of<AddBoxCubit>(context).addproduct(
                  token: widget.userEntitymodel.token,
                  endpoint: "cart/minus",
                  data: {"product_id": widget.producEntity.id},
                );
              }
            });
          },
          child: const AddMiuns(
            iconData: Icons.remove,
          ),
        ),
      ],
    );
  }
}
