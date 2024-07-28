import 'dart:developer';
import 'dart:io';

import 'package:country_code_text_field/phone_number.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/function/imagePicker.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/customtextfiled.dart';
import 'package:pett_peaces/fetures/mydata/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/mydata/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/mydata/prsention/view/manager/cubit/update_cubit.dart';
import 'package:pett_peaces/fetures/mydata/prsention/view/widget/disapeltextfiled.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/continertextfiledcontry.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/countryphonetextfiled.dart';

class Mydata extends StatefulWidget {
  final UserEntitymodel userEntitymodel;

  const Mydata({super.key, required this.userEntitymodel});

  @override
  State<Mydata> createState() => _MydataState();
}

class _MydataState extends State<Mydata> {
  MydataRepo mydataRepo = MydataRepoImp();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdateCubit(mydataRepo),
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset("Asset/image/Back.png")),
          title: Text(
            " بياناتي",
            style: AppStyles.styleRegular24(context)
                .copyWith(fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: BodyMyData(
          userEntitymodel: widget.userEntitymodel,
        ),
      ),
    );
  }
}

class BodyMyData extends StatefulWidget {
  final UserEntitymodel userEntitymodel;

  const BodyMyData({super.key, required this.userEntitymodel});

  @override
  State<BodyMyData> createState() => _BodyMyDataState();
}

class _BodyMyDataState extends State<BodyMyData> {
  ImagePickerService _imagePickerService = ImagePickerService();
  File? _selectedImage;

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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Center(
                  child: GestureDetector(
                    onTap: _pickImage,
                    child: CircleAvatar(
                      backgroundImage: _selectedImage != null
                          ? FileImage(_selectedImage!)
                          : NetworkImage(widget.userEntitymodel.image),
                      radius: 55,
                    ),
                  ),
                ),
                Positioned(
                    top: 0,
                    right: -15,
                    left: 100,
                    child: Image.asset("Asset/image/edit rectangle.png"))
              ],
            ),
            Text(
              "    الأسم بالكامل      ",
              style: AppStyles.styleMedium16(context).copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Textformfiledemail(
              initialValue: widget.userEntitymodel.name,
              onSaved: (v) {},
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "    البريد الإلكتروني      ",
              style: AppStyles.styleMedium16(context).copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Textformfiledemaildisaple(
              initialValue: widget.userEntitymodel.email,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "    الهاتف       ",
              style: AppStyles.styleMedium16(context).copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            CountryPhoneTextfiled(
              text: widget.userEntitymodel.phone,
              onSaved: (PhoneNumber? s) {},
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              children: [Custombuttom(titel: "تاكيد", onPressed: () {})],
            )
          ],
        ),
      ),
    );
  }
}
