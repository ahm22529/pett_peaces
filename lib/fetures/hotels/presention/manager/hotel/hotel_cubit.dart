import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:pett_peaces/fetures/hotels/domain/entity/aboutus_entity.dart';
import 'package:pett_peaces/fetures/hotels/domain/repo/hotelrep.dart';

part 'hotel_state.dart';

class HotelCubit extends Cubit<HotelState> {
  HotelCubit(this.hotelrep) : super(HotelInitial());
  Hotelrep hotelrep;
  void getdata({required String endpoint, required String token}) async {
   
    emit(Hotellaod());
    final result = await hotelrep.gethotel(endpoint: endpoint, token: token);
    result.fold(
      (failure) => emit(Hotelfailure(errmass: failure.errmas)),
      (userEntity) => emit(Hotelsucess(hotelresponse: userEntity)),
    );
  }
}
