import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/doctor/domain/entity/doctor_entity.dart';
import 'package:pett_peaces/fetures/doctor/domain/repo/doctorerepo.dart';

part 'fetchdoctor_state.dart';

class FetchdoctorCubit extends Cubit<FetchdoctorState> {
  FetchdoctorCubit(this.doctorerepo) : super(FetchdoctorInitial());
  Doctorerepo doctorerepo;

  void getdata({
    required String endpoint,
    required String token,
    Map<String, dynamic> data = const {},
  }) async {
    emit(Fetchdoctorload());
    final result = await doctorerepo.getallcoatch(
      endpoint: endpoint,
      token: token,
      data: data,
    );
    print("fetch $result");
    result.fold(
      (failure) => emit(FetchdoctorfAUILER(errmas: failure.errmas)),
      (userEntity) => emit(
        Fetchdoctorsucess(doctorEntity: userEntity),
      ),
    );
  }

  Future<void> searchProducts({
    required String endpoint,
    required String token,
    required Map<String, dynamic> query,
  }) async {
    emit(Fetchdoctorload());
    final result = await doctorerepo.getallcoatch(
      endpoint: endpoint,
      token: token,
      data: query,
    );
    print("search $result");
    result.fold(
      (failure) => emit(FetchdoctorfAUILER(errmas: failure.errmas)),
      (userEntity) => emit(Fetchdoctorsucessserch(doctorEntity: userEntity)),
    );
  }
}
