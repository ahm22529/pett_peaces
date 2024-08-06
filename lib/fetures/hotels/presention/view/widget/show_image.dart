import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ShowImage extends StatelessWidget {
  final List<Map<String, dynamic>>? hotelEntity;

  ShowImage({super.key, required this.hotelEntity});

  @override
  Widget build(BuildContext context) {
    if (hotelEntity == null || hotelEntity!.isEmpty) {
      return const Center(
        child: SizedBox(),
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
            onTap: () {},
            child: CachedNetworkImage(
              imageUrl: hotelEntity![index]['image'],
              fit: BoxFit.cover,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => const Center(
                child: Icon(Icons.warning_amber_rounded,
                    color: Colors.red, size: 48.0),
              ),
            ),
          );
        } else {
          return GestureDetector(
            onTap: () {},
            child: Stack(
              fit: StackFit.expand,
              children: [
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
}
