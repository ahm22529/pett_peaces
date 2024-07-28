import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/addanmiles/add_amiles_cubit.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/descriptio.dart';

void submit(
    {required name,
    type,
    age,
    description,
    typeDescription,
    image,
    selimage,
    context}) {
  final formData = FormData.fromMap({
    "name": name,
    "type": type,
    "gender": "male",
    "age": age,
    "description": description,
    "type_description": typeDescription,
    "image": image,
    "images[]":
        selimage.map((file) => MultipartFile.fromFileSync(file.path)).toList(),
  });

  BlocProvider.of<AddAmilesCubit>(context).addAnmiles(
    endpoint: "animals/50/update",
    token:
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNjY2MTU5LCJleHAiOjE3MjIyNzA5NTksIm5iZiI6MTcyMTY2NjE1OSwianRpIjoiZUJodjZtQ2dFV2UyY0xnUSIsInN1YiI6IjEwOSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.99iC7a6BaYfnVCcCvll3dLteePiKdN3_de0zeO4vATA",
    data: formData,
  );
}
