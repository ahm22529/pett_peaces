import 'package:collection/collection.dart';
import 'package:pett_peaces/fetures/coteching/domain/entity/coatch_entiity_frist.dart';
import 'package:pett_peaces/fetures/coteching/domain/entity/cotach_entity.dart';

import 'datum.dart';
import 'links.dart';
import 'meta.dart';

class Data extends CoatchEntiityFrist {
  List<Datum>? data;
  Links? links;
  Meta? meta;

  Data({this.data, this.links, this.meta})
      : super(coatch: data ?? [], lastpage: meta?.lastPage ?? 0);

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

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Data) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => data.hashCode ^ links.hashCode ^ meta.hashCode;
}
