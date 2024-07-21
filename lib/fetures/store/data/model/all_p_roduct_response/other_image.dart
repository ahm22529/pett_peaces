class OtherImage {
  int? id;
  String? image;
  bool? isMainImage;

  OtherImage({this.id, this.image, this.isMainImage});

  factory OtherImage.fromJson(Map<String, dynamic> json) => OtherImage(
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
