import 'image.dart';

class Media {
  int? additionalImageCount;
  List<Image>? images;

  Media({this.additionalImageCount, this.images});

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        additionalImageCount: json['additional_image_count'] as int?,
        images: (json['images'] as List<dynamic>?)
            ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'additional_image_count': additionalImageCount,
        'images': images?.map((e) => e.toJson()).toList(),
      };
}
