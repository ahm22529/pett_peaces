import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/entity/examel_entity.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/manager/featch/exambelcubit_cubit.dart';

part 'tag_state.dart';

class TagCubit extends Cubit<TagState> {
  TagCubit(this.exame) : super(TagInitial());
  Exambelrepo exame;
  void getdata(
      {required String endpoint,
      required String token,
      Map<String, dynamic> data = const {}}) async {
    emit(Tagload());
    final result =
        await exame.getexambel(endpoint: endpoint, token: token, data: data);
    print("fectch $result");
    result.fold(
      (failure) => emit(Tagfauleer(errmas: failure.errmas)),
      (userEntity) => emit(Tagsucess(ex: userEntity)),
    );
  }
}
