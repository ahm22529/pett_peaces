import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/chatdetails/domain/repo/massage_details_repo.dart';

part 'send_state.dart';

class SendCubit extends Cubit<SendState> {
  SendCubit({required this.mass}) : super(SendInitial());
  MassageDetailsRepo mass;

  void send(
      {required String endpoint,
      required String token,
      required FormData data}) async {
    emit(SendLoad());
    final res =
        await mass.sendMassage(endppoint: endpoint, token: token, data: data);
    res.fold(
      (failure) => emit(SendFauiler(errmass: failure.errmas)),
      (l) => emit(Sendsucess()),
    );
  }
}
