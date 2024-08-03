import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/box/presention/manager/addtobox/add_box_cubit.dart';
import 'package:pett_peaces/fetures/box/presention/manager/cubit/getbox_cubit.dart';

import 'package:pett_peaces/fetures/box/presention/view/widgwt/count_iteam.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/information_iteam.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class pricevulemname extends StatefulWidget {
  const pricevulemname({
    super.key,
    required this.producEntity,
    required this.userEntitymodel,
    required this.onRemoveItem,
    required this.count,
  });
  final ProducEntity producEntity;
  final UserEntitymodel userEntitymodel;
  final int count;
  final void Function(ProducEntity) onRemoveItem;

  @override
  State<pricevulemname> createState() => _pricevulemnameState();
}

class _pricevulemnameState extends State<pricevulemname> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Informtionorderiteam(
              box: widget.producEntity,
            ),
            const Spacer(),
            IconButton(
              icon: Image.asset("Asset/image/ggg.png"),
              onPressed: () {
                BlocProvider.of<AddBoxCubit>(context).addproduct(
                    token: widget.userEntitymodel.token,
                    endpoint: "cart/remove",
                    data: {"product_id": widget.producEntity.id});
                widget.onRemoveItem(widget.producEntity);
                BlocProvider.of<GetboxCubit>(context).getBox(
                    endpoint: "cart/show", token: widget.userEntitymodel.token);
              },
            ),
          ],
        ),
        const SizedBox(
          height: 29,
        ),
        Countiteam(
          prices: widget.producEntity.prices,
          userEntitymodel: widget.userEntitymodel,
          producEntity: widget.producEntity,
          count: widget.count,
        )
      ],
    );
  }
}
