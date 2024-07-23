import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/entity/exambel_details_enity.dart';

class Datum extends ExambelEnitydetails {
  int? id;
  String? title;
  String? image;
  String? content;
  List<dynamic>? tags;
  DateTime? createdAt;

  Datum({
    this.id,
    this.title,
    this.image,
    this.content,
    this.tags,
    this.createdAt,
  }) : super(
          contant: content ?? "",
          cretat: createdAt ?? DateTime.now(),
          idd: id ?? 0,
          tag: tags ?? [],
          titel: title ?? "",
          imagee: image ?? "",
        );

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['id'] as int?,
        title: json['title'] as String?,
        image: json['image'] as String?,
        content: json['content'] as String?,
        tags: json['tags'] as List<dynamic>?,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'image': image,
        'content': content,
        'tags': tags,
        'created_at': createdAt?.toIso8601String(),
      };
}
