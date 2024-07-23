import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:pett_peaces/fetures/hotels/domain/repo/hotelrep.dart';

part 'book_state.dart';

class BookCubit extends Cubit<BookState> {
  BookCubit(this.hotelrep) : super(BookInitial());
  Hotelrep hotelrep;
  void getdata(
      {required String endpoint,
      required String token,
      required Map<String, dynamic> data}) async {
    emit(Bookload());
    final result =
        await hotelrep.book(endpoint: endpoint, token: token, data: data);
    print(result);
    result.fold(
      (failure) => emit(Bookfailuere(errmas: failure.errmas)),
      (userEntity) => emit(Booksucess()),
    );
  }
}
