class SubDepartment {
  int? id;
  String? name;

  SubDepartment({this.id, this.name});

  factory SubDepartment.fromJson(Map<String, dynamic> json) => SubDepartment(
        id: json['id'] as int?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
