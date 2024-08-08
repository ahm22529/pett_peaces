import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/core/utiles/services/localservices/repo/localdat_repo.dart';

import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/domain/entity/sub_depart_entity.dart';

part 'localdata_state.dart';

class LocaldataCubit extends Cubit<LocaldataState> {
  LocaldataCubit() : super(LocaldataInitial());
  LocaldatRepo localdatRepo = LocaldatRepo();
  void addUser(UserEntity user) {
    try {
      localdatRepo.saveuser(user);
      emit(Localdatasucessadd());
    } on Exception catch (e) {
      // TODO
      emit(LocaldataFauiler());
    }

    
  }

  UserEntity getUser() {
    return localdatRepo.getuser();
  }
void addDepart(SubdepartEntity sub) {
           localdatRepo.savedatapart(sub);
      emit(Localdatasucessadd());
    }
 List <SubdepartEntity>getdepart(){
 return localdatRepo.getdepaart();
 }
  
}
