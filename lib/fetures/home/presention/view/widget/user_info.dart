import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
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
              style: AppStyles.styleMedium12(context),
              textAlign: TextAlign.right,
            ),
            Text(
              userEntitymodel.name,
              style: AppStyles.styleRegular14(context)
                  .copyWith(fontWeight: FontWeight.w600),
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
                context, MaterialPageRoute(builder: (builder) => Notifactin())),
            child: Image.asset("Asset/image/Frame 1000004230.png")),
      ],
    );
  }
}
