import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/core/utiles/localservices/repo/localdat_repo.dart';

import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

part 'localdata_state.dart';

class LocaldataCubit extends Cubit<LocaldataState> {
  LocaldataCubit() : super(LocaldataInitial());
  LocaldatRepo localdatRepo = LocaldatRepo();
  void addUser(UserEntity user) {
    try {
      localdatRepo.savedata(user);
      emit(Localdatasucessadd());
    } on Exception catch (e) {
      // TODO
      emit(LocaldataFauiler());
    }
  }

  UserEntity getUser() {
    return localdatRepo.getuser();
  }
}
