import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/newpassword/domin/repo/update_repo.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

part 'updatepassword_state.dart';

class UpdatepasswordCubit extends Cubit<UpdatepasswordState> {
  UpdatepasswordCubit(this.updateRepo) : super(UpdatepasswordInitial());
  UpdateRepo updateRepo;
  Future<void> updatePassw(Map<String, dynamic> input, String endpoint) async {
    emit(UpdatepasswordLoading());
    final result = await updateRepo.updatepass(input, endpoint);
    print(result);
    result.fold(
      (failure) => emit(UpdatepasswordFailure(message: failure.errmas)),
      (userEntity) => emit(UpdatepasswordSuccess(userEntity: userEntity)),
    );
  }
}
