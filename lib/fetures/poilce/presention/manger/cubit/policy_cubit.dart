import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/poilce/domain/entity/policyentity.dart';
import 'package:pett_peaces/fetures/poilce/domain/repo/repo.dart';

part 'policy_state.dart';

class PolicyCubit extends Cubit<PolicyState> {
  PolicyCubit(this.policyRepo) : super(PolicyInitial());
  PolicyRepo policyRepo;
  void getpolicy({required String endpoint, required String token}) async {
    final res = await policyRepo.getpolicy(token: token, endpoint: endpoint);
    print("fectch $res");
    res.fold(
      (failure) => emit(Policyfauiler(errmasg: failure.errmas)),
      (userEntity) => emit(PolicyIsuicess(policyentity: userEntity)),
    );
  }

  void getAboutus({required String endpoint, required String token}) async {
    final res = await policyRepo.getpolicy(token: token, endpoint: endpoint);
    print("fectch $res");
    res.fold(
      (failure) => emit(Policyfauiler(errmasg: failure.errmas)),
      (userEntity) => emit(PolicyIsuicessAboutus(policyentity: userEntity)),
    );
  }
}
