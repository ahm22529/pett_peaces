import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class Aboutus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("Asset/image/Back.png"),
        title: Text(
          " عنا",
          style: AppStyles.styleRegular24(context)
              .copyWith(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Bodyaboutus(),
    );
  }
}

class Bodyaboutus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "هذا النص هو مثال لنص يمكن أن يستبدل في نفس العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى حيث يمكنك أن تولد هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى حيث يمكنك أن تولد هذا النص هو مثال لنص ",
            style: AppStyles.styleMedium16(context),
          ),
          SizedBox(
            height: 36,
          ),
          Row(
            children: [
              Image.asset("Asset/image/location.png"),
              Text(
                "Street:  Box No. 81747",
                style: AppStyles.styleRegular14(context),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset("Asset/image/location.png"),
              Text(
                "Street:  Box No. 81747",
                style: AppStyles.styleRegular14(context),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset("Asset/image/location.png"),
              Text(
                "Street:  Box No. 81747",
                style: AppStyles.styleRegular14(context),
              )
            ],
          ),
          SizedBox(
            height: 38,
          ),
          Row(
            children: [
              Image.asset("Asset/image/f.png"),
              SizedBox(
                width: 20,
              ),
              Image.asset("Asset/image/f.png"),
              SizedBox(
                width: 20,
              ),
              Image.asset("Asset/image/f.png"),
              SizedBox(
                width: 20,
              ),
              Image.asset("Asset/image/f.png"),
            ],
          )
        ],
      ),
    );
  }
}
