class Image {
  int? id;
  String? image;
  bool? isMainImage;

  Image({this.id, this.image, this.isMainImage});

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json['id'] as int?,
        image: json['image'] as String?,
        isMainImage: json['is_main_image'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'is_main_image': isMainImage,
      };
}
