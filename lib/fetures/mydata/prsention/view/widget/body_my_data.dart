import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/function/builderrorbar.dart';

import 'package:pett_peaces/core/utiles/function/imagePicker.dart';
import 'package:pett_peaces/fetures/mydata/prsention/view/manager/cubit/update_cubit.dart';

import 'package:pett_peaces/fetures/mydata/prsention/view/widget/form_update_data.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class BodyMyData extends StatefulWidget {
  final UserEntitymodel userEntitymodel;

  const BodyMyData({super.key, required this.userEntitymodel});

  @override
  State<BodyMyData> createState() => _BodyMyDataState();
}

class _BodyMyDataState extends State<BodyMyData> {
  ImagePickerService _imagePickerService = ImagePickerService();
  File? _selectedImage;
  String name = '';
  String mobile = '';

  Future<void> _pickImage() async {
    final selectedImage = await _imagePickerService.pickImages();
    if (selectedImage != null && selectedImage.isNotEmpty) {
      setState(() {
        _selectedImage = selectedImage.first;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateCubit, UpdateState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is Updatesucess) {
          buildErrorBar(context, "تم تحذيث البيانات بنجاح");
        }
        if (state is Updatefauiler) {
          buildErrorBar(context, "   حدث خطا يرجي اعاده المحاوله");
        }
      },
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: _pickImage,
                child: Stack(
                  children: [
                    Center(
                      child: CircleAvatar(
                        backgroundImage: _selectedImage != null
                            ? FileImage(_selectedImage!)
                            : NetworkImage(widget.userEntitymodel.image),
                        radius: 55,
                      ),
                    ),
                    Positioned(
                        top: 0,
                        right: -15,
                        left: 100,
                        child: Image.asset("Asset/image/edit rectangle.png"))
                  ],
                ),
              ),
              Fromupdate(
                file: _selectedImage ?? null,
                userEntitymodel: widget.userEntitymodel,
              )
            ],
          ),
        ),
      ),
    );
  }
}
