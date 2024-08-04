import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/mydata/prsention/view/mydata.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Cardd extends StatelessWidget {
  final UserEntity userEntitymodel;

  const Cardd({super.key, required this.userEntitymodel});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 47.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 25),
          child: Column(
            children: [
              SizedBox(height: 6),
              Text(
                userEntitymodel.name,
                style: AppStyles.styleMedium16(context)
                    .copyWith(fontWeight: FontWeight.w600, color: Colors.black),
              ),
              Text(
                userEntitymodel.email,
                style: AppStyles.styleRegular14(context),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => Mydata(
                              userEntitymodel: userEntitymodel,
                            ))),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Color(0xffF78E32), width: 1),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset("Asset/image/edit rectangle.png"),
                        SizedBox(width: 5),
                        Text(
                          "تعديل بيناتي",
                          style: AppStyles.styleRegular14(context).copyWith(
                            color: Color(0xffF78E32),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
