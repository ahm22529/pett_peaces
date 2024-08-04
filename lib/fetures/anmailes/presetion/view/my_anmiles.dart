import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/anmailes/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/anmailes/domin/repo/repo.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/fetechmyanmiles/fetach_my_anmiles_cubit.dart';

import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/platform_ui.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Myanmiles extends StatefulWidget {
  final UserEntity userEntitymodel;
  const Myanmiles({super.key, required this.userEntitymodel});

  @override
  State<Myanmiles> createState() => _MyanmilesState();
}

class _MyanmilesState extends State<Myanmiles> {
  AnmilesRepo anmilesRepo = AnimelsRepoImp();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetachMyAnmilesCubit(anmilesRepo),
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset("Asset/image/Back.png")),
          title: Text(
            "  حيواناتي",
            style: AppStyles.styleRegular24(context)
                .copyWith(fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: PlatformuiMyanmiles(
          userEntitymodel: widget.userEntitymodel,
        ),
      ),
    );
  }
}
