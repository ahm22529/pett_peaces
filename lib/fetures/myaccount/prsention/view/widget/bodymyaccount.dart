import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/function/bulid_drop_text_filed.dart';
import 'package:pett_peaces/core/utiles/function/imagePicker.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/addanmiles/add_amiles_cubit.dart';
import 'package:pett_peaces/fetures/contactus/prsention/view/widget/textfiledreson.dart';
import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/addphote.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/droptextfiled.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/fristcontiner.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/twoiteam.dart';

class Bodymyaccount extends StatefulWidget {
  final AnmilesEntity anmilesEntity;

  const Bodymyaccount({super.key, required this.anmilesEntity});

  @override
  State<Bodymyaccount> createState() => _BodymyaccountState();
}

class _BodymyaccountState extends State<Bodymyaccount> {
  final ImagePickerService _imagePickerService = ImagePickerService();
  List<File> _selectedImages = [];
  bool isacu = false;
  File? _pickedImage;
  // Variables to store input values
  String name = '';
  String type = '';
  String gender = '';
  String age = '';
  String description = '';
  String typeDescription = '';

  @override
  void initState() {
    super.initState();
    _initializeSelectedImages();
  }

  Future<void> _initializeSelectedImages() async {
    setState(() {
      _selectedImages =
          widget.anmilesEntity.otherimage.map((path) => File(path)).toList();
    });
  }

  Future<void> _pickImage() async {
    final selectedImages = await _imagePickerService.pickImages();
    if (selectedImages != null) {
      setState(() {
        _selectedImages.addAll(selectedImages);
        widget.anmilesEntity.otherimage
            .addAll(selectedImages.map((file) => file.path));
      });
    }
  }

  void _removeImage(int index) {
    setState(() {
      _selectedImages.removeAt(index);
      widget.anmilesEntity.otherimage.removeAt(index);
    });
  }

  void toggleEditingMode() {
    setState(() {
      isacu = true;
    });
  }

  void toggleEdcancitingMode() {
    setState(() {
      isacu = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          fristcontiner(
            toggleEditingMode: toggleEditingMode,
            togglecacelingMode: toggleEdcancitingMode,
            text1: widget.anmilesEntity.namee,
            text2: widget.anmilesEntity.typee,
            onImagePicked: (File? s) {},
            img: widget.anmilesEntity.imagee,
            id: widget.anmilesEntity.idd.toString(),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "الاسم",
                    style: AppStyles.styleMedium16(context),
                  ),
                  const SizedBox(height: 16),
                  Textformfieldresoncon(
                    maxline: 1,
                    initialValue: widget.anmilesEntity.namee,
                    enabel: isacu,
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                  ),
                  Text(
                    "النوع",
                    style: AppStyles.styleMedium16(context),
                  ),
                  const SizedBox(height: 16),
                  Textformfieldresoncon(
                    maxline: 1,
                    initialValue: widget.anmilesEntity.typee,
                    enabel: isacu,
                    onChanged: (value) {
                      setState(() {
                        type = value;
                      });
                    },
                  ),
                  Text(
                    "الجنس",
                    style: AppStyles.styleMedium16(context),
                  ),
                  const SizedBox(height: 16),
                  buildDropdownField("الجنس", ["انثي", "ذكر"], (value) {
                    setState(() {
                      gender = value!;
                    });
                  }, context, true),
                  Text(
                    "السنوات",
                    style: AppStyles.styleMedium16(context),
                  ),
                  const SizedBox(height: 16),
                  Textformfieldresoncon(
                    maxline: 1,
                    initialValue: widget.anmilesEntity.agee.toString(),
                    enabel: isacu,
                    onChanged: (value) {
                      setState(() {
                        age = value;
                      });
                    },
                  ),
                  Text(
                    "الوصف",
                    style: AppStyles.styleMedium16(context),
                  ),
                  const SizedBox(height: 16),
                  Textformfieldresoncon(
                    maxline: 1,
                    initialValue: widget.anmilesEntity.des,
                    enabel: isacu,
                    onChanged: (value) {
                      setState(() {
                        description = value;
                      });
                    },
                  ),
                  Text(
                    "وصف النوع",
                    style: AppStyles.styleMedium16(context),
                  ),
                  const SizedBox(height: 16),
                  Textformfieldresoncon(
                    maxline: 3,
                    initialValue: widget.anmilesEntity.predec,
                    enabel: isacu,
                    onChanged: (value) {
                      setState(() {
                        typeDescription = value;
                      });
                    },
                  ),
                  const SizedBox(height: 16),
                  GestureDetector(
                    onTap: _pickImage,
                    child: Visibility(
                      visible: isacu,
                      child: const addphot(),
                    ),
                  ),
                  const SizedBox(height: 30),
                  widget.anmilesEntity.otherimage.isNotEmpty
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
                                    child: Image.network(
                                      widget.anmilesEntity.otherimage[index],
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
                  twobuttomMyaccount(isacu: isacu),
                  IconButton(
                    icon: Icon(Icons.abc),
                    onPressed: () {
                      final formData = FormData.fromMap({
                        "name":
                            name.isEmpty ? widget.anmilesEntity.namee : name,
                        "type":
                            type.isEmpty ? widget.anmilesEntity.typee : type,
                        "gender": gender.isEmpty ? "male" : "male",
                        "age": age.isEmpty ? 5 : 5,
                        "description": description.isEmpty
                            ? widget.anmilesEntity.des
                            : name,
                        "type_description": typeDescription.isEmpty
                            ? widget.anmilesEntity.des
                            : description,
                        "image": _pickedImage != null
                            ? MultipartFile.fromFile(_pickedImage!.path)
                            : null,
                        "images[]": _selectedImages
                            .map(
                                (file) => MultipartFile.fromFileSync(file.path))
                            .toList(),
                      });

                      print(formData);

                      BlocProvider.of<AddAmilesCubit>(context).addAnmiles(
                        endpoint: "animals/50/update",
                        token:
                            "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNjY2MTU5LCJleHAiOjE3MjIyNzA5NTksIm5iZiI6MTcyMTY2NjE1OSwianRpIjoiZUJodjZtQ2dFV2UyY0xnUSIsInN1YiI6IjEwOSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.99iC7a6BaYfnVCcCvll3dLteePiKdN3_de0zeO4vATA",
                        data: formData,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
