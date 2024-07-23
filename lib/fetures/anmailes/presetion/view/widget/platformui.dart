import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/adaptiveui.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/cubit/fetach_my_anmiles_cubit.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/bodyanmiles.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/butom.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/iteam.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/iteamlistview.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/tabletui.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/myaccount.dart';

class PlatformuiMyanmiles extends StatefulWidget {
  @override
  State<PlatformuiMyanmiles> createState() => _PlatformuiMyanmilesState();
}

class _PlatformuiMyanmilesState extends State<PlatformuiMyanmiles> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<FetachMyAnmilesCubit>(context).getanmiles(
        token:
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNjY2MTU5LCJleHAiOjE3MjIyNzA5NTksIm5iZiI6MTcyMTY2NjE1OSwianRpIjoiZUJodjZtQ2dFV2UyY0xnUSIsInN1YiI6IjEwOSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.99iC7a6BaYfnVCcCvll3dLteePiKdN3_de0zeO4vATA",
        endpoint: "animals/");
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveUi(
        MobileLauyOut: (context) => BodyAnmiles(),
        TabletLayOut: (context) => Tabletui(),
        DeskTopLayOut: (context) => Tabletui());
  }
}
