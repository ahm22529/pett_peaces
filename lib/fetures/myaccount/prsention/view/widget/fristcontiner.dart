import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/deletmyanmiles/delet_anmiles_cubit.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/bodyfristcontiner.dart';

class fristcontiner extends StatelessWidget {
  const fristcontiner({
    super.key,
    required this.toggleEditingMode,
    required this.togglecacelingMode,
    required this.text1,
    required this.text2,
    required this.onImagePicked,
    required this.img,
    required this.id,
  });
  final VoidCallback toggleEditingMode, togglecacelingMode;
  final String text1, text2, id;
  final dynamic Function(File?) onImagePicked;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "Asset/image/psps.png"), // Replace with your image asset
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 35),
        child: bodyfristcontiner(
          toggleEditingMode: toggleEditingMode,
          togglecacelingMode: togglecacelingMode,
          text1: text1,
          text2: text2,
          onImagePicked: onImagePicked,
          id: id,
          onTap: () {
            BlocProvider.of<DeletAnmilesCubit>(context).deletAnmiles(
                endpoint: "animals/${id}/delete",
                token:
                    "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNjY2MTU5LCJleHAiOjE3MjIyNzA5NTksIm5iZiI6MTcyMTY2NjE1OSwianRpIjoiZUJodjZtQ2dFV2UyY0xnUSIsInN1YiI6IjEwOSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.99iC7a6BaYfnVCcCvll3dLteePiKdN3_de0zeO4vATA");
          },
        ),
      ),
    );
  }
}
