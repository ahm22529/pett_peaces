import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/list_image.dart';

class Headerdetailes extends StatefulWidget {
  const Headerdetailes({
    Key? key,
    required this.producEntity,
  }) : super(key: key);

  final ProducEntity producEntity;

  @override
  State<Headerdetailes> createState() => _HeaderdetailesState();
}

class _HeaderdetailesState extends State<Headerdetailes> {
  int selindex = 0;

  @override
  Widget build(BuildContext context) {
    // استخدام الصورة الافتراضية كالصورة الرئيسية
    String mainImagePath = selindex == 0
        ? widget.producEntity.img
        : widget.producEntity.oherimage.isNotEmpty
            ? widget.producEntity.oherimage[selindex - 1]
            : widget.producEntity.img;

    // تحديد قائمة الصور، تأخذ أول عنصرين إذا كانت القائمة تحتوي على عناصر
    List images = [widget.producEntity.img]..addAll(widget
        .producEntity.oherimage
        .take(widget.producEntity.oherimage.length > 1 ? 2 : 0));

    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffFDDCBF),
        image: DecorationImage(
          image: AssetImage("Asset/image/OPSEG70 1.png"),
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
                    child: Image.asset("Asset/image/Back.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 35.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.width * .5,
                    width: MediaQuery.of(context).size.width * .5,
                    child: Image.network(mainImagePath),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 20),
                    child: images.isNotEmpty
                        ? Listimage(
                            selindex: selindex,
                            images: images,
                            onImageSelected: (index) {
                              setState(() {
                                selindex = index;
                              });
                            },
                          )
                        : Text("")),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
