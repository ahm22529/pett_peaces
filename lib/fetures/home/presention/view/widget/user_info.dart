import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/box/presention/view/box.dart';
import 'package:pett_peaces/fetures/notifaction/presention/notifaction.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class UserInfoCard extends StatelessWidget {
  final UserEntity userEntitymodel;

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
              userEntitymodel.name,
              style: AppStyles.styleMedium12(context).copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
              textAlign: TextAlign.right,
            ),
            Text(
              userEntitymodel.email,
              style: AppStyles.styleRegular14(context)
                  .copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
          ],
        ),
        const Spacer(),
        GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (builder) => Box(
                          userEntitymodel: userEntitymodel,
                        ))),
            child: Image.asset("Asset/image/box.png")),
        const SizedBox(
          width: 8,
        ),
        GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (builder) => Notifactin(
                          userEntitymodel: userEntitymodel,
                        ))),
            child: Image.asset("Asset/image/Frame 1000004230.png")),
      ],
    );
  }
}
