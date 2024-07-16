import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/home/data/model/loginuserimodel/loginusermodel.dart';
import 'package:pett_peaces/fetures/home/presention/view/homescrren.dart';

class singinbutto extends StatelessWidget {
  const singinbutto({
    super.key,
    required this.globalKey,
    required this.loiginUserInputModel,
  });

  final GlobalKey<FormState> globalKey;
  final LoiginUserInputModel loiginUserInputModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Custombuttom(
          titel: 'تسجيل دخول',
          onPressed: () {
            if (globalKey.currentState!.validate()) {
              print(loiginUserInputModel.email);

              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => HomeScreen()));
            } else {}
          },
        ),
      ],
    );
  }
}
