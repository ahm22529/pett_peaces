import 'package:collection/collection.dart';
import 'package:pett_peaces/fetures/coteching/domain/entity/coatch_entiity_frist.dart';
import 'package:pett_peaces/fetures/coteching/domain/entity/cotach_entity.dart';

import 'data.dart';

class CoatingResponse extends CoatchEntiityFrist {
  bool? status;
  int? statusCode;
  Data? data;
  String? message;

  CoatingResponse({this.status, this.statusCode, this.data, this.message})
      : super(coatch: data?.data ?? [], lastpage: data?.meta?.lastPage ?? 0);

  factory CoatingResponse.fromJson(Map<String, dynamic> json) {
    return CoatingResponse(
      status: json['status'] as bool?,
      statusCode: json['status_code'] as int?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'status': status,
        'status_code': statusCode,
        'data': data?.toJson(),
        'message': message,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! CoatingResponse) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      status.hashCode ^ statusCode.hashCode ^ data.hashCode ^ message.hashCode;
}
