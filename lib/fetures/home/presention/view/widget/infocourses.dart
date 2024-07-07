import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class infocourses extends StatelessWidget {
  const infocourses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(.3),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              "كلب",
              style: AppStyles.styleMedium16(context)
                  .copyWith(fontSize: 12, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class Courses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "Asset/image/foter.png"), // Replace with your image asset
          fit: BoxFit.cover,
        ),
      ),
      child: bodycontinercourses(),
    );
  }
}

class bodycontinercourses extends StatelessWidget {
  const bodycontinercourses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: const Color(0xffFFFFFF).withOpacity(.3),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 7),
                child: FittedBox(
                  child: Text(
                    "كورس تعليم الكلاب ",
                    style: AppStyles.styleMedium16(context)
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Expanded(
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                infocourses(),
                SizedBox(
                  width: 5,
                ),
                infocourses(),
                SizedBox(
                  width: 5,
                ),
                infocourses(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
