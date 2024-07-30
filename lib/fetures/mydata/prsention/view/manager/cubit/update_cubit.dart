import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/mydata/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

part 'update_state.dart';

class UpdateCubit extends Cubit<UpdateState> {
  UpdateCubit(this.mydataRepo) : super(UpdateInitial());
  MydataRepo mydataRepo;
  void UpdateData(
      {required String endpoint,
      required String token,
      required FormData data}) async {
    emit(Updateload());
    final res = await mydataRepo.updateData(
        token: token, endpoint: endpoint, form: data);
    print(res);
    res.fold(
      (failure) => emit(Updatefauiler(errma: failure.errmas)),
      (userEntity) => emit(Updatesucess(userEntitymodel: userEntity)),
    );
  }
}
