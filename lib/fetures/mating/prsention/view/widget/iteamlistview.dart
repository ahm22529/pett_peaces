import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/butom.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/iteamlistview.dart';
import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';
import 'package:pett_peaces/fetures/mating/prsention/manager/Add_remove/add_or_remove_cubit.dart';

class Iteamlistviewm extends StatelessWidget {
  const Iteamlistviewm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddOrRemoveCubit, AddOrRemoveState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is AddOrRemovesucess) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errmas)));
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffF78E32),
            image: const DecorationImage(
              image: AssetImage(
                  "Asset/image/OPSEG70 1.png"), // Replace with your image asset
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 9),
              child: iteamlistviewami(
                widget: buttomanmandmating(
                  text: "الغاء العرض",
                  image: "Asset/image/remove-circle.png",
                  color: Colors.red,
                  onTap: () {
                    log("message");
                  },
                ),
                animel: AnmilesEntity(
                    agee: 1,
                    namee: ",d",
                    otherimage: [],
                    typee: '',
                    des: '',
                    gendere: '',
                    idd: 0,
                    predec: '',
                    imagee: ''),
              )),
        ),
      ),
    );
  }
}
