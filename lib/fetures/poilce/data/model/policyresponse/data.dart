class Data {
  int? id;
  String? type;
  String? description;

  Data({this.id, this.type, this.description});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json['id'] as int?,
        type: json['type'] as String?,
        description: json['description'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'type': type,
        'description': description,
      };
}
