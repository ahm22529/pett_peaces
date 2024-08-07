import 'image.dart';

class AdditonalPhotots {
  int? countImages;
  List<Image>? images;

  AdditonalPhotots({this.countImages, this.images});

  factory AdditonalPhotots.fromJson(Map<String, dynamic> json) {
    return AdditonalPhotots(
      countImages: json['count_images'] as int?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'count_images': countImages,
        'images': images?.map((e) => e.toJson()).toList(),
      };
}
