class Service {
  int? id;
  String? name;
  dynamic value;

  Service({this.id, this.name, this.value});

  factory Service.fromJson(Map<String, dynamic> json) => Service(
        id: json['id'] as int?,
        name: json['name'] as String?,
        value: json['value'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'value': value,
      };
}
