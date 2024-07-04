import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/imageactive.dart';

class Listimage extends StatelessWidget {
  final int selindex;
  final Function(int) onImageSelected;

  const Listimage(
      {Key? key, required this.selindex, required this.onImageSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      "Asset/image/Group 1000001195.png",
      "Asset/image/Group 1000001196.png",
      "Asset/image/Group 1000001197.png"
    ];

    return Column(
      children: image.asMap().entries.map((entry) {
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
              color: selindex == index
                  ? Colors.transparent
                  : const Color(0xffFDDCBF),
            ),
          ),
        );
      }).toList(),
    );
  }
}
