import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/function/imagePicker.dart';
import 'package:pett_peaces/core/utiles/function/submit.dart';
import 'package:pett_peaces/fetures/anmailes/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/anmailes/domin/repo/repo.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/addanmiles/add_amiles_cubit.dart';
import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/addphote.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/formadd.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/header_add_account.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/listview_image.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/submit_buttom.dart';

class Bodymyaccount extends StatefulWidget {
  const Bodymyaccount({super.key, required this.anmilesEntityn});
  final AnmilesEntity anmilesEntityn;
  @override
  _MyAccountAddState createState() => _MyAccountAddState();
}

class _MyAccountAddState extends State<Bodymyaccount> {
  final ImagePickerService _imagePickerService = ImagePickerService();
  final AnmilesRepo _anmilesRepo = AnimelsRepoImp();

  List<File> _selectedImages = [];
  File? _pickedImage;
  bool isEditing = true;

  // Variables to store input values
  String name = '';
  String type = '';
  String gender = '';
  int age = 0;
  String description = '';
  String typeDescription = '';

  Future<void> _pickImage() async {
    final selectedImages = await _imagePickerService.pickImages();
    if (selectedImages != null) {
      setState(() {
        _selectedImages.addAll(selectedImages);
      });
    }
  }

  void _removeImage(int index) {
    setState(() {
      _selectedImages.removeAt(index);
    });
  }

  void _handleImagePicked(File? image) {
    setState(() {
      _pickedImage = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddAmilesCubit, AddAmilesState>(
      listener: (context, state) {
        log('add');
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: HeaderWidget(
                toggleEditingMode: () {
                  // Your toggle editing logic
                },
                text1: widget.anmilesEntityn.namee,
                text2: widget.anmilesEntityn.des,
                onImagePicked: _handleImagePicked,
                toggleCancelingMode: () {
                  // Your toggle canceling logic
                },
                id: '',
              ),
            )),
            FormWidget(
              isEditing: true,
              onNameChanged: (value) {
                name = value;
              },
              onTypeChanged: (value) {
                type = value;
              },
              onGenderChanged: (value) {
                gender = value;
              },
              onAgeChanged: (value) {
                age = value;
              },
              onDescriptionChanged: (value) {
                description = value;
              },
              onTypeDescriptionChanged: (value) {
                typeDescription = value;
              },
            ),
            _buildImagePicker(),
            ImageListWidget(
              selectedImages: _selectedImages,
              onRemoveImage: (index) {
                // Handle image removal logic here
                setState(() {
                  _selectedImages.removeAt(index);
                });
              },
            ),
            // ig,nore: prefer_const_constructors
            const SizedBox(
              height: 15,
            ),
            SubmitButtons(
              onSubmit: () {
                submit(
                  name: name.isEmpty ? widget.anmilesEntityn.namee : name,
                  age: age == widget.anmilesEntityn.agee
                      ? widget.anmilesEntityn.agee
                      : age,
                  description: description.isEmpty
                      ? widget.anmilesEntityn.des
                      : description,
                  typeDescription: typeDescription.isEmpty
                      ? widget.anmilesEntityn.predec
                      : typeDescription,
                  image: _pickedImage != null
                      ? MultipartFile.fromFileSync(_pickedImage!.path)
                      : null,
                  selimage: _selectedImages,
                  context: context,
                  type: type,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImagePicker() {
    return GestureDetector(
      onTap: _pickImage,
      child: Visibility(
        visible: isEditing,
        child: const addphot(),
      ),
    );
  }
}
