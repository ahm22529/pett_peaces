import 'package:pett_peaces/fetures/notifaction/domain/entity/notifaction_entity.dart';

class Datum extends NotifactionEntity {
  String? message;
  String? notificationType;
  String? params;
  String? icon;
  DateTime? createdAt;

  Datum({
    this.message,
    this.notificationType,
    this.params,
    this.icon,
    this.createdAt,
  }) : super(
            dateTime: createdAt!,
            icone: icon ?? "",
            mass: message ?? "",
            type: notificationType ?? "");

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        message: json['message'] as String?,
        notificationType: json['notification_type'] as String?,
        params: json['params'] as String?,
        icon: json['icon'] as String?,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
      );

  Map<String, dynamic> toJson() => {
        'message': message,
        'notification_type': notificationType,
        'params': params,
        'icon': icon,
        'created_at': createdAt?.toIso8601String(),
      };
}
