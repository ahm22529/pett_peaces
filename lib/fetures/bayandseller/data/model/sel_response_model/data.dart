import 'package:pett_peaces/fetures/bayandseller/domain/entity/list_anmiles._enity%20.dart';
import 'package:pett_peaces/fetures/bayandseller/domain/entity/sel_entity.dart';

import 'datum.dart';
import 'links.dart';
import 'meta.dart';

class Data extends ListSelEnity {
  List<Datum>? data;
  Links? links;
  Meta? meta;

  Data({this.data, this.links, this.meta}) : super(sell: data ?? []);

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
