import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/masssege/domain/entity/freined_chat_entity.dart';
import 'package:pett_peaces/fetures/masssege/domain/repo/massage_repo.dart';

part 'massage_state.dart';

class MassageCubit extends Cubit<MassageState> {
  MassageCubit({required this.massageRepo}) : super(MassageInitial());
  MassageRepo massageRepo;

  void getalluser({required String endpoint, required String token}) async {
    emit(MassageLoad());
    final resuilt =
        await massageRepo.getAllFrined(token: token, endpoint: endpoint);
    resuilt.fold(
      (failure) => emit(MassageFauiler(errormassage: failure.errmas)),
      (allchat) => emit(MassageSucess(allChat: allchat)),
    );
  }

  void searchAboutuser(
      {required String endpoint, required String token}) async {
    emit(MassageLoad());
    final resuilt =
        await massageRepo.getAllFrined(token: token, endpoint: "$endpoint");
    resuilt.fold(
      (failure) => emit(MassageFauiler(errormassage: failure.errmas)),
      (allchat) => emit(MassageSucess(allChat: allchat)),
    );
  }
}
