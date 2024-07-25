import 'package:flutter/material.dart';

class show extends StatelessWidget {
  final List? hotelEntity;

  show({super.key, required this.hotelEntity});

  @override
  Widget build(BuildContext context) {
    if (hotelEntity == null || hotelEntity!.isEmpty) {
      return Center(
        child: Text('مفيش صور متاحة'),
      );
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // عدد الأعمدة في الشبكة
        crossAxisSpacing: 4.0, // تباعد أفقي بين العناصر
        mainAxisSpacing: 4.0, // تباعد رأسي بين العناصر
      ),
      itemCount: hotelEntity!.length > 4 ? 4 : hotelEntity!.length,
      itemBuilder: (context, index) {
        if (index < 3) {
          // عرض الصور الأولى
          return GestureDetector(
              onTap: () {
                _showImageDialog(context, hotelEntity![index]);
              },
              child: hotelEntity![index]);
        } else {
          // عنصر خاص بعرض الصورة الأخيرة مع عدد الصور الزائدة
          return GestureDetector(
            onTap: () {
              _showRemainingImagesDialog(context);
            },
            child: Stack(
              fit: StackFit.expand,
              children: [
                hotelEntity![index],
                Container(
                  color: Colors.black.withOpacity(0.5), // لون خلفية النص
                  child: Center(
                    child: Text(
                      '+${hotelEntity!.length - 4}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }

  void _showImageDialog(BuildContext context, String imagePath) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Image.asset(imagePath),
        );
      },
    );
  }

  void _showRemainingImagesDialog(BuildContext context) {
    final remainingImages =
        hotelEntity!.sublist(4); // الصور الباقية من الفهرس 4 فصاعدًا

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: SingleChildScrollView(
            child: Column(
              children: remainingImages.map((image) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset(image, fit: BoxFit.cover),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
