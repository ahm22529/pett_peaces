import 'package:collection/collection.dart';

import 'link.dart';

class Meta {
  int? currentPage;
  int? from;
  int? lastPage;
  List<Link>? links;
  String? path;
  int? perPage;
  int? to;
  int? total;

  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    this.links,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        currentPage: json['current_page'] as int?,
        from: json['from'] as int?,
        lastPage: json['last_page'] as int?,
        links: (json['links'] as List<dynamic>?)
            ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
            .toList(),
        path: json['path'] as String?,
        perPage: json['per_page'] as int?,
        to: json['to'] as int?,
        total: json['total'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'current_page': currentPage,
        'from': from,
        'last_page': lastPage,
        'links': links?.map((e) => e.toJson()).toList(),
        'path': path,
        'per_page': perPage,
        'to': to,
        'total': total,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Meta) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      currentPage.hashCode ^
      from.hashCode ^
      lastPage.hashCode ^
      links.hashCode ^
      path.hashCode ^
      perPage.hashCode ^
      to.hashCode ^
      total.hashCode;
}
