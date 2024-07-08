import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/detailsorder/presention/view/orderdetails.dart';

class buttomshowdetails extends StatelessWidget {
  const buttomshowdetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Custombuttom(
            titel: "عرض التفاصيل",
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => OrderDetails()));
            })
      ],
    );
  }
}
