import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/contactus/data/repo/contact_rep.dart';

part 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactCubit(this.contactusRepo) : super(ContactInitial());
  ContactusRepo contactusRepo;
  Future<void> contact(
      {required String endpoint, required Map<String, dynamic> data}) async {
    try {
      final result =
          await contactusRepo.checkout(ndpoint: endpoint, data: data);
      log(result.toString());
      result.fold(
        (failure) => emit(Contactfauiler(errma: failure.errmas)),
        (userEntity) => emit(Contactsucess(
            errmas: "تم ارسال رسالتك بنجاح وسوف يتم التواصل قريبا")),
      );
    } on Exception catch (e) {
      // TODO
    }
  }
}
