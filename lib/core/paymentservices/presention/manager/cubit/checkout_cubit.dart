import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/core/paymentservices/domain/repo.dart';
part 'checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit(this.courseRepo) : super(CheckoutInitial());
  CheckoutRepo courseRepo;
  void getcheckout(
      {required String endpoint,
      required String token,
      required Map<String, dynamic> data}) async {
    try {
      emit(Checkoutload());
      var result = await courseRepo.checkout(
          ndpoint: endpoint, token: token, data: data);
      log(result.toString());
      result.fold(
        (failure) => emit(Checkoutfauler(errmas: failure.errmas)),
        (userEntity) => emit(Checkoutsucess(checkentity: userEntity)),
      );
    } on Exception catch (e) {
      // TODO
    }
  }
}
