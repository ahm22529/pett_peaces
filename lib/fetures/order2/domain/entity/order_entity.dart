import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';

class OrderEntity {
  final String revnamber, waypay,price;
  final int  idd;
  List<ProducEntity> prod;
  DateTime date;

  OrderEntity(
      {required this.idd,
      required this.revnamber,
      required this.date,
      required this.waypay,
      required this.price,
      required this.prod});
}

class ListOrderEntity {
  final List<OrderEntity> order;

  ListOrderEntity({required this.order});
}
