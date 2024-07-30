import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/addanmiles/add_amiles_cubit.dart';

void submit(
    {required name,
    type,
    token,
    age,
    endpoint,
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
    endpoint: endpoint,
    token: token,
    data: formData,
  );
}
