import 'package:flutter/cupertino.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/listviewadvance.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/continertextfiled.dart';

class BodyExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 73,
                ),
                customAppbar(
                  name: 'الامثله والنصائح',
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 24,
                ),
                continertextfiled(
                  name: 'ابحث عن الأمثلة',
                  textEditingController: TextEditingController(),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          ListViewAdvanced(),
        ],
      ),
    );
  }
}
