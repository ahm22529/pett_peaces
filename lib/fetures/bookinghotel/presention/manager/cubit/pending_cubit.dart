import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/hotels/presention/manager/cubit/book_cubit.dart';
import 'package:pett_peaces/fetures/bookinghotel/domain/entity/llist_booking_entity.dart';
import 'package:pett_peaces/fetures/bookinghotel/domain/repo/bookingrepo.dart';
import 'package:pett_peaces/fetures/store/prention/manager/featchallproduct/fectch_product_cubit.dart';

part 'pending_state.dart';

class PendingCubit extends Cubit<PendingState> {
  PendingCubit(this.bookingrepo) : super(PendingInitial());
  Bookingrepo bookingrepo;
  Future<void> getdata({
    required String endpoint,
    required String token,
    Map<String, dynamic> data = const {},
  }) async {
    emit(Pendingload());
    final result = await bookingrepo.getpending(
      endpoint: endpoint,
      token: token,
    );
    print("fectch $result");
    result.fold(
      (failure) => emit(Pendingfauiler(errmas: failure.errmas)),
      (userEntity) => emit(Pendingsucess(llistBookingEntity: userEntity)),
    );
  }
}
