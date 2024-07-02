import 'package:flutter/cupertino.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:timer_count_down/timer_count_down.dart';

class TimeDown extends StatelessWidget {
  const TimeDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("اعد الإرسال بعد"),
        Countdown(
          seconds: 20,
          build: (BuildContext context, double time) => Text(
            time.toString(),
            style: AppStyles.styleRegular14(context)
                .copyWith(color: const Color(0xffF78E32)),
          ),
          interval: const Duration(milliseconds: 100),
          onFinished: () {
            print('Timer is done!');
          },
        )
      ],
    );
  }
}
