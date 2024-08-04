import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/adaptiveui.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/fetechmyanmiles/fetach_my_anmiles_cubit.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/body_anmiles.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/tablet_ui.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class PlatformuiMyanmiles extends StatefulWidget {
  final UserEntity userEntitymodel;

  const PlatformuiMyanmiles({super.key, required this.userEntitymodel});
  @override
  State<PlatformuiMyanmiles> createState() => _PlatformuiMyanmilesState();
}

class _PlatformuiMyanmilesState extends State<PlatformuiMyanmiles> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<FetachMyAnmilesCubit>(context)
        .getanmiles(token: widget.userEntitymodel.token, endpoint: "animals/");
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveUi(
        MobileLauyOut: (context) => BodyAnmiles(
              userEntitymodel: widget.userEntitymodel,
            ),
        TabletLayOut: (context) => Tabletui(
              userEntitymodel: widget.userEntitymodel,
            ),
        DeskTopLayOut: (context) => Tabletui(
              userEntitymodel: widget.userEntitymodel,
            ));
  }
}
