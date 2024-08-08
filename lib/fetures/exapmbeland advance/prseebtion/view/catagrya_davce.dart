
import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/body_exapmbel.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Catagryadavce extends StatelessWidget {
  const Catagryadavce({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyExample(
        userEntitymodel: UserEntity(
            massage: '',
            id: '',
            type: '',
            name: '',
            phone: '',
            email: '',
            image: '',
            token: '',
            is_plan_subscribe: false,
            email_verified_at: false),
      ),
    );
  }
}
