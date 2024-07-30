import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';

import 'datum.dart';
import 'links.dart';
import 'meta.dart';

class Data extends ProducEntity {
  List<dynamic>? data;
  Links? links;
  Meta? meta;

  Data({this.data, this.links, this.meta})
      : super(
          img: "",
          qan: 0,
          prices: "",
          id: 0,
          nameof: "",
          volum: "",
          oherimage: [],
          oldprice: "",
          detai: "",
          shortdescription: "",
          pro: data?.map((item) => item as ProducEntity).toList() ?? [],
        );

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
