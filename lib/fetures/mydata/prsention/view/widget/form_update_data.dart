import 'dart:io';

import 'package:country_code_text_field/phone_number.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/customtextfiled.dart';
import 'package:pett_peaces/fetures/mydata/prsention/view/manager/cubit/update_cubit.dart';
import 'package:pett_peaces/fetures/mydata/prsention/view/widget/disapel_textfiled.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/singup/presention/view/widget/countryphonetextfiled.dart';

class Fromupdate extends StatefulWidget {
  final UserEntitymodel userEntitymodel;
  final File? file;

  const Fromupdate(
      {super.key, required this.userEntitymodel, required this.file});
  @override
  State<Fromupdate> createState() => _FromupdateState();
}

class _FromupdateState extends State<Fromupdate> {
  String name = '';
  String mobile = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "    الأسم بالكامل      ",
          style: AppStyles.styleMedium16(context).copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 16),
        Textformfiledemail(
          initialValue: widget.userEntitymodel.name,
          onSaved: (value) {
            setState(() {
              name = value!;
            });
          },
        ),
        const SizedBox(height: 16),
        Text(
          "    البريد الإلكتروني      ",
          style: AppStyles.styleMedium16(context).copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 16),
        Textformfiledemaildisaple(
          initialValue: widget.userEntitymodel.email,
        ),
        const SizedBox(height: 16),
        Text(
          "    الهاتف       ",
          style: AppStyles.styleMedium16(context).copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 16),
        CountryPhoneTextfiled(
          text: widget.userEntitymodel.phone,
          onSaved: (PhoneNumber? phoneNumber) {
            setState(() {
              mobile = phoneNumber?.number ?? '';
            });
          },
        ),
        SizedBox(height: 32),
        Row(
          children: [
            Custombuttom(
                titel: "تاكيد",
                onPressed: () async {
                  final formData = FormData.fromMap({
                    'name': name,
                    'mobile': mobile,
                    'mobile_country_code': "+20",
                    'image': widget.file != null
                        ? await MultipartFile.fromFile(widget.file!.path)
                        : null,
                  });

                  BlocProvider.of<UpdateCubit>(context).UpdateData(
                    endpoint: "profile/update/information",
                    token: widget.userEntitymodel.token,
                    data: formData,
                  );
                })
          ],
        )
      ],
    );
  }
}
