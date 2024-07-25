import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/anmailes/domin/repo/repo.dart';

part 'add_amiles_state.dart';

class AddAmilesCubit extends Cubit<AddAmilesState> {
  AddAmilesCubit(this.anmilesRepo) : super(AddAmilesInitial());
  AnmilesRepo anmilesRepo;
  void addAnmiles(
      {required String endpoint,
      required String token,
      required FormData data}) async {
    try {
      final re = await anmilesRepo.addanmiles(
          endpoint: endpoint, token: token, data: data);
      print(re);
      re.fold(
        (failure) => emit(AddAmilesfauiler(errmas: failure.errmas)),
        (userEntity) => emit(AddAmilessucess(mas: "تمت الاضافه بنجاح")),
      );
    } on Exception catch (e) {
      // TODO
    }
  }
}
