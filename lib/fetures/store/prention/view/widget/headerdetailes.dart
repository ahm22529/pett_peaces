import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/listimage.dart';

class Headerdetailes extends StatefulWidget {
  const Headerdetailes({
    Key? key,
  }) : super(key: key);

  @override
  State<Headerdetailes> createState() => _HeaderdetailesState();
}

class _HeaderdetailesState extends State<Headerdetailes> {
  String imagePath = "Asset/image/Group 1000001195.png"; // Default image path
  int selindex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffFDDCBF),
        image: DecorationImage(
          image: AssetImage(
            "Asset/image/OPSEG70 1.png",
          ), // Replace with your image asset
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 30),
                  child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Image.asset("Asset/image/Back.png")),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 35.0),
                  child: SizedBox(
                      height: MediaQuery.of(context).size.width * .5,
                      width: MediaQuery.of(context).size.width * .5,
                      child: Image.asset(imagePath)),
                ),
                // Display the selected image here,
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 20),
                  child: Listimage(
                    selindex: selindex,
                    onImageSelected: (index) {
                      setState(() {
                        selindex = index;
                        switch (index) {
                          case 0:
                            imagePath = "Asset/image/Frame 1000004378 (1).png";
                            break;
                          case 1:
                            imagePath = "Asset/image/Frame 1000004378 (2).png";
                            break;
                          case 2:
                            imagePath = "Asset/image/Frame 1000004378 (2).png";
                            break;
                          default:
                            imagePath = "Asset/image/Frame 1000004378 (2).png";
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}
