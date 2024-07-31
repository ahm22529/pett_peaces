import 'package:pett_peaces/fetures/bookinghotel/domain/entity/booking_eneity.dart';
import 'package:pett_peaces/fetures/bookinghotel/domain/entity/llist_booking_entity.dart';

import 'datum.dart';
import 'links.dart';
import 'meta.dart';

class Data extends LlistBookingEntity {
  List<Datum>? data;
  Links? links;
  Meta? meta;

  Data({this.data, this.links, this.meta})
      : super(book: data ?? [], nexturl: links?.next ?? "");

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
            .toList(),
        links: json['links'] == null
            ? null
            : Links.fromJson(json['links'] as Map<String, dynamic>),
        meta: json['meta'] == null
            ? null
            : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
        'links': links?.toJson(),
        'meta': meta?.toJson(),
      };
}
