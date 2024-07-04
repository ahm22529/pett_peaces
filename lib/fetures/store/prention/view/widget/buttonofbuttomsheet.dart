import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/buttomsheetadvance.dart';

class buttonofbuttomsheet extends StatelessWidget {
  const buttonofbuttomsheet({
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
            showModalBottomSheet(
                context: context,
                builder: (builder) => CustomButtomShhetadvance(
                      lis: selectedItems,
                    ));
          },
        )
      ],
    );
  }
}
