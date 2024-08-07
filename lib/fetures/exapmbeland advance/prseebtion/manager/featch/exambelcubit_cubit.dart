import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/entity/examel_entity.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/repo/repo.dart';

part 'exambelcubit_state.dart';

class ExambelcubitCubit extends Cubit<ExambelcubitState> {
  ExambelcubitCubit(this.exam) : super(ExambelcubitInitial());
  Exambelrepo exam;
  String titel = "الامثله والنصايح ";
  void getdata(
      {required String endpoint,
      required String token,
      Map<String, dynamic> data = const {}}) async {
    emit(Exambelcubitload());
    final result =
        await exam.getexambel(endpoint: endpoint, token: token, data: data);
    print("fectch ${result}");
    result.fold(
      (failure) => emit(Exambelcubitfauleer(errmas: failure.errmas)),
      (userEntity) => emit(Exambelcubitsucess(ex: userEntity)),
    );
  }

  Future<void> searchProducts({
    required String endpoint,
    required String token,
    required Map<String, dynamic> query, // البحث استناداً إلى استعلام
  }) async {
    emit(Exambelcubitload());
    final result = await exam.getexambel(
      endpoint: endpoint,
      token: token,
      data: query, // إرسال استعلام البحث كبيانات
    );
    print("search $result");
    result.fold(
      (failure) => emit(Exambelcubitfauleer(errmas: failure.errmas)),
      (userEntity) => emit(Exambelcubitsucessserch(ex: userEntity)),
    );
  }

  void gettag(
      {required String endpoint,
      required String token,
      Map<String, dynamic> data = const {}}) async {
    emit(Exambelcubitload());
    final result =
        await exam.getexambel(endpoint: endpoint, token: token, data: data);
    print("fectch $result");
    result.fold(
      (failure) => emit(Exambelcubitfauleer(errmas: failure.errmas)),
      (userEntity) => emit(Exambelcubitsucestag(ex: userEntity)),
    );
  }

  updateheadertitel(tag) {
    titel = tag;
    emit(Update(tag: tag));
  }
}
