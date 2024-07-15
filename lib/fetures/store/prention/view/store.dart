import 'package:flutter/material.dart';

import 'package:pett_peaces/fetures/store/prention/view/widget/Bodystore.dart';

import 'package:pett_peaces/fetures/store/prention/view/widget/allplatform.dart';


import 'package:pett_peaces/fetures/store/prention/view/widget/titelappbar.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDFD),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFA44A),
        elevation: 0,
        automaticallyImplyLeading:
            false, // hides the default leading widget on the AppBar
        title: Titelappbar(
          name: 'ابحث عن المنتجات',
        ),
      ),
      body: Allplatform(),
    );
  }
}