import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/notifaction/domain/entity/notifaction_entity.dart';
import 'package:pett_peaces/fetures/notifaction/domain/repo/notifaction_repo.dart';

part 'getnotifaction_state.dart';

class GetnotifactionCubit extends Cubit<GetnotifactionState> {
  GetnotifactionCubit({required this.notifactionRepo})
      : super(GetnotifactionInitial());
  NotifactionRepo notifactionRepo;

  void getNotifaction({required String endpoint, required String token}) async {
    final res =
        await notifactionRepo.getnotifaction(endpoint: endpoint, token: token);
    res.fold(
      (failure) => emit(Getnotifactionfauiler(errmasg: failure.errmas)),
      (userEntity) => emit(GetnotifactionSucess(allnotifaction: userEntity)),
    );
  }
}
