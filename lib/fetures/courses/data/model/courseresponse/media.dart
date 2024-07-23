import 'image.dart';

class Media {
  int? additionalImageCount;
  List<Image>? image;

  Media({this.additionalImageCount, this.image});

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        additionalImageCount: json['additional_image_count'] as int?,
        image: (json['image'] as List<dynamic>?)
            ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'additional_image_count': additionalImageCount,
        'image': image?.map((e) => e.toJson()).toList(),
      };
}
