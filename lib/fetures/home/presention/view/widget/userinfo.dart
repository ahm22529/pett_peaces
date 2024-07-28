import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/box/presention/view/box.dart';
import 'package:pett_peaces/fetures/notifaction/presention/notifaction.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class UserInfoCard extends StatelessWidget {
  final UserEntitymodel userEntitymodel;

  const UserInfoCard({super.key, required this.userEntitymodel});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(userEntitymodel
              .image), // Ensure you have added the image in your assets folder
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userEntitymodel.email,
              style: const TextStyle(
                fontFamily: 'Changa',
                fontWeight: FontWeight.w600,
                fontSize: 12,
                height: 1.4,
                color: Color(0xffb5b5b5),
              ),
              textAlign: TextAlign.right,
            ),
            Text(
              userEntitymodel.name,
              style: const TextStyle(
                fontFamily: 'Changa',
                fontWeight: FontWeight.w600,
                fontSize: 14,
                height: 1.4,
                color: Color(0xff020202),
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
        const Spacer(),
        GestureDetector(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (builder) => Box())),
            child: Image.asset("Asset/image/box.png")),
        const SizedBox(
          width: 8,
        ),
        GestureDetector(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (builder) => Notifactin())),
            child: Image.asset("Asset/image/Frame 1000004230.png")),
      ],
    );
  }
}
