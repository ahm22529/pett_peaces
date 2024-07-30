import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/bodyexapmbel.dart';
import 'package:pett_peaces/fetures/singup/data/model/inputusermodele/usermodel.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Catagryadavce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  BodyExample(userEntitymodel: UserEntitymodel(massage: '', id: '', type: '', name: '', phone: '', email: '', image: '', token: '', is_plan_subscribe: false, email_verified_at: false),),
    );
  }
}
