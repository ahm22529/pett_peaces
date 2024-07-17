import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/function/imagePicker.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/contactus/prsention/view/widget/textfiledreson.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/accountappbar.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/addphote.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/buttomtext.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/droptextfiled.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/fristcontiner.dart';

import 'dart:io';

import 'package:pett_peaces/fetures/resonbuy/presention/view/resonbuy.dart';

class Myaccountadd extends StatefulWidget {
  @override
  _MyaccountState createState() => _MyaccountState();
}

class _MyaccountState extends State<Myaccountadd> {
  final ImagePickerService _imagePickerService = ImagePickerService();
  List<File> _selectedImages = [];
  bool isacu = true;
  bool showDotContainer = true;

  Future<void> _pickImage() async {
    final selectedImage = await _imagePickerService.pickImages();

    if (selectedImage != null) {
      setState(() {
        _selectedImages.addAll(selectedImage);
      });
    }
  }

  void _removeImage(int index) {
    setState(() {
      _selectedImages.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            fristcontiner(
              toggleEditingMode: () {},
              togglecacelingMode: () {},
              text1: "",
              text2: '',
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      "الاسم",
                      style: AppStyles.styleMedium16(context).copyWith(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 16),
                    Textformfieldresoncon(
                      maxline: 1,
                      initialValue: '',
                      enabel: isacu,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "النوع",
                      style: AppStyles.styleMedium16(context).copyWith(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 16),
                    Textformfieldresoncon(
                      maxline: 1,
                      initialValue: ' ',
                      enabel: isacu,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "الجنس",
                      style: AppStyles.styleMedium16(context).copyWith(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 16),
                    DropdownField(
                      options: ["انثي", "ذكر"],
                      controller: TextEditingController(),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "السنوات",
                      style: AppStyles.styleMedium16(context).copyWith(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 16),
                    Textformfieldresoncon(
                      maxline: 1,
                      initialValue: '',
                      enabel: isacu,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "الوصف",
                      style: AppStyles.styleMedium16(context).copyWith(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 16),
                    Textformfieldresoncon(
                      maxline: 1,
                      initialValue: '',
                      enabel: isacu,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      " وصف النوع",
                      style: AppStyles.styleMedium16(context).copyWith(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 16),
                    Textformfieldresoncon(
                      maxline: 3,
                      initialValue: '',
                      enabel: isacu,
                    ),
                    const SizedBox(height: 16),
                    GestureDetector(
                      onTap: _pickImage,
                      child: Visibility(visible: isacu, child: const addphot()),
                    ),
                    const SizedBox(height: 30),
                    _selectedImages.isNotEmpty
                        ? Container(
                            height: 100,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: _selectedImages.length,
                              itemBuilder: (context, index) {
                                return Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.file(
                                        _selectedImages[index],
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: GestureDetector(
                                        onTap: () => _removeImage(index),
                                        child: Container(
                                          padding: const EdgeInsets.all(4),
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.red,
                                          ),
                                          child: const Icon(
                                            Icons.close,
                                            color: Colors.white,
                                            size: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          )
                        : Container(),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => resonbay())),
                            child: buttomtext(
                              color: Colors.orange,
                              text: 'عرض للبيع',
                              colortext: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: buttomtext(
                            color: Colors.transparent,
                            text: ' عرض للتزاوج',
                            colortext: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
