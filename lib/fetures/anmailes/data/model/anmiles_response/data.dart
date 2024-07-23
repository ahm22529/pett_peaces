import 'package:pett_peaces/fetures/anmailes/domin/enitiy/anmiles_det.dart';

import 'datum.dart';
import 'links.dart';
import 'meta.dart';

class Data extends ListAnmileEntity {
  List<Datum>? data;
  Links? links;
  Meta? meta;

  Data({this.data, this.links, this.meta})
      : super(
            anmiles: data ?? [],
            lastpage: meta?.lastPage ?? 0,
            currentpage: meta?.currentPage ?? 0);

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
