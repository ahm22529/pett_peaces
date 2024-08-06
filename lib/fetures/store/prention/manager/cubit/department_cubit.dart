import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/store/domain/entity/department_entity.dart';
import 'package:pett_peaces/fetures/store/domain/repo.dart';

part 'department_state.dart';

class DepartmentCubit extends Cubit<DepartmentState> {
  DepartmentCubit(this.storeRepo) : super(DepartmentInitial());
  StoreRepo storeRepo;
  void getDepaartment({required String endpoint, required String token}) async {
    final res = await storeRepo.getalldep(endpoint: endpoint, token: token);
    log(res.toString());
    res.fold(
      (failure) => emit(DepartmentIfauiler(errmas: failure.errmas)),
      (userEntity) => emit(DepartmentSucess(alldDepartment: userEntity)),
    );
  }
}
