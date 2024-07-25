import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/deletmyanmiles/delet_anmiles_cubit.dart';

class acountappbar extends StatefulWidget {
  final VoidCallback toggleEditingMode, togglecacelingMode;
  final String id;
  const acountappbar({
    Key? key,
    required this.toggleEditingMode,
    required this.togglecacelingMode,
    required this.id,
  }) : super(key: key);

  @override
  State<acountappbar> createState() => _acountappbarState();
}

class _acountappbarState extends State<acountappbar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Image.asset("Asset/image/Back.png")),
        Spacer(),
        GestureDetector(
            onTap: () {
              BlocProvider.of<DeletAnmilesCubit>(context).deletAnmiles(
                  endpoint: "animals/${widget.id}/delete",
                  token:
                      "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNjY2MTU5LCJleHAiOjE3MjIyNzA5NTksIm5iZiI6MTcyMTY2NjE1OSwianRpIjoiZUJodjZtQ2dFV2UyY0xnUSIsInN1YiI6IjEwOSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.99iC7a6BaYfnVCcCvll3dLteePiKdN3_de0zeO4vATA");
            },
            child: Image.asset("Asset/image/dasdasd.png")),
        SizedBox(
          width: 15,
        ),
        GestureDetector(
          onTap: widget.toggleEditingMode,
          child: Image.asset("Asset/image/fff.png"),
        ),
      ],
    );
  }
}
