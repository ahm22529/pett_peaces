import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/function/imagePicker.dart';
import 'package:pett_peaces/core/utiles/function/submit.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/addanmiles/add_amiles_cubit.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/formadd.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/header_add_account.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/image_picker_widget.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/listview_image.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/submit_buttom.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class BodyMyAdd extends StatefulWidget {
  final UserEntity userEntitymodel;

  const BodyMyAdd({super.key, required this.userEntitymodel});
  @override
  _BodyMyAddState createState() => _BodyMyAddState();
}

class _BodyMyAddState extends State<BodyMyAdd> {
  final ImagePickerService _imagePickerService = ImagePickerService();
  List<File> _selectedImages = [];
  File? _pickedImage;
  bool isEditing = true;
  String name = '',
      type = '',
      gender = '',
      description = '',
      typeDescription = '';
  int age = 0;

  Future<void> _pickImage() async {
    final selectedImages = await _imagePickerService.pickImages();
    if (selectedImages != null) {
      setState(() {
        _selectedImages.addAll(selectedImages);
      });
    }
  }

  bool _validateInputs() {
    return name.isNotEmpty &&
        type.isNotEmpty &&
        gender.isNotEmpty &&
        age > 0 &&
        description.isNotEmpty &&
        typeDescription.isNotEmpty;
  }

  void _showErrorMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.green,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddAmilesCubit, AddAmilesState>(
      listener: (context, state) {
        if (state is AddAmilessucess) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.mas)));
          Navigator.pop(context);
        }
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: HeaderWidget(
                  toggleEditingMode: () {},
                  text1: '',
                  text2: '',
                  onImagePicked: (image) {
                    setState(() {
                      _pickedImage = image;
                    });
                  },
                  toggleCancelingMode: () {},
                  id: '',
                  userEntitymodel: widget.userEntitymodel,
                  onTap: () {},
                ),
              ),
            ),
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
            ImagePickerWidget(isEditing: isEditing, pickImage: _pickImage),
            ImageListWidget(
              selectedImages: _selectedImages,
              onRemoveImage: (index) {
                setState(() {
                  _selectedImages.removeAt(index);
                });
              },
            ),
            const SizedBox(height: 15),
            SubmitButtons(
              onSubmit: () {
                if (_validateInputs()) {
                  submit(
                      name: name,
                      age: age,
                      description: description,
                      typeDescription: typeDescription,
                      image: _pickedImage != null
                          ? MultipartFile.fromFileSync(_pickedImage!.path)
                          : null,
                      selimage: _selectedImages,
                      context: context,
                      type: type,
                      endpoint: "animals/store",
                      token: widget.userEntitymodel.token);
                } else {
                  _showErrorMessage('Please fill in all fields');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
