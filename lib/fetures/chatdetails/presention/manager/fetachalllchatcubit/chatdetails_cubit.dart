import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/chatdetails/domain/entity/chat_details_entity.dart';
import 'package:pett_peaces/fetures/chatdetails/domain/repo/massage_details_repo.dart';

part 'chatdetails_state.dart';

class ChatdetailsCubit extends Cubit<ChatdetailsState> {
  ChatdetailsCubit({required this.mass}) : super(ChatdetailsInitial());
  MassageDetailsRepo mass;
  void getmassage(
      {required String endpoint,
      required String token,
      required String id}) async {
    emit(ChatdetailsLoad());
    final res = await mass.getmassage(endpoint: endpoint, token: token, id: id);
    log(res.toString());
    res.fold(
      (failure) => emit(ChatdetailsFauiler(errorMessage: failure.errmas)),
      (detailsentity) => emit(ChatdetailsSucess(detailsEntity: detailsentity)),
    );
  }
}
