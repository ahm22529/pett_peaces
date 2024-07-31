import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/image_active.dart';

class Listimage extends StatelessWidget {
  final int selindex;
  final Function(int) onImageSelected;
  final List images; // قائمة الصور

  const Listimage({
    Key? key,
    required this.selindex,
    required this.onImageSelected,
    required this.images, // استقبال قائمة الصور
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: images.asMap().entries.map((entry) {
        final index = entry.key;
        final item = entry.value;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 3.0),
          child: GestureDetector(
            onTap: () {
              onImageSelected(
                  index); // Notify parent widget about the selection
            },
            child: Imageacive(
              color: selindex == index ? Colors.orange : Colors.transparent,
              imagePath: item, // استخدام مسار الصورة
            ),
          ),
        );
      }).toList(),
    );
  }
}
