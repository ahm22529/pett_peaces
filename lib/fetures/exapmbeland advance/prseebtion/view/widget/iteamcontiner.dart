import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/entity/exambel_details_enity.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/body.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/hatag.dart';

import '../../../../../core/utiles/sttyel.dart';

class CustomContainerButton extends StatelessWidget {
  final String titel;
  final VoidCallback onPressed;

  const CustomContainerButton({
    super.key,
    required this.titel,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffFFE2C9),
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 0),
        child: Center(
          child: Text(
            titel,
            style: AppStyles.styleMedium12(context)
                .copyWith(color: const Color(0xffF78E32)),
          ),
        ),
      ),
    );
  }
}

class HeaderAndBody extends StatelessWidget {
  const HeaderAndBody({
    super.key,
    required this.examel,
  });
  final ExambelEnitydetails examel;

  @override
  Widget build(BuildContext context) {
    // Limiting the number of tags to 2
    final tagsToDisplay = examel.tag.take(2).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 8.0, // Horizontal spacing between buttons
          runSpacing: 4.0, // Vertical spacing between rows
          children: tagsToDisplay.map((item) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: CustomContainerButton(
                titel: item,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (builder) => Hastag(
                        examel: examel,
                      ),
                    ),
                  );
                },
              ),
            );
          }).toList(),
        ),
        const SizedBox(
          height: 8,
        ),
        Bodyofheader(
          examel: examel,
        )
      ],
    );
  }
}
