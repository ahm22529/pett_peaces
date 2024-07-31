import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pett_peaces/fetures/order2/domain/entity/order_entity.dart';
import 'package:pett_peaces/fetures/order2/domain/repo/repo.dart';

part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit(this.orderrepo) : super(OrderInitial());
  Orderrepo orderrepo;
  void getdata({required String endpoint, required String token}) async {
    final res = await orderrepo.getorder(endpoint: endpoint, token: token);
    res.fold(
      (failure) => emit(Orderfuiler(errmas: failure.errmas)),
      (userEntity) => emit(Ordersucess(listOrderEntity: userEntity)),
    );
  }
}
