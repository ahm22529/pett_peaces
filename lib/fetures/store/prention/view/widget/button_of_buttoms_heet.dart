import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/buttom_sheet_advance.dart';

class Buttonofbuttomsheet extends StatelessWidget {
  const Buttonofbuttomsheet({
    super.key,
    required this.selectedItems,
  });

  final List<String> selectedItems;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Custombuttom(
          titel: "تطبيق",
          onPressed: () {
            print(selectedItems);

            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
