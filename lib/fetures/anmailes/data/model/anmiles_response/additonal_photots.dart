class AdditonalPhotots {
  int? countImages;
  List<dynamic>? images;

  AdditonalPhotots({this.countImages, this.images});

  factory AdditonalPhotots.fromJson(Map<String, dynamic> json) {
    return AdditonalPhotots(
      countImages: json['count_images'] as int?,
      images: json['images'] as List<dynamic>?,
    );
  }

  Map<String, dynamic> toJson() => {
        'count_images': countImages,
        'images': images,
      };
}
