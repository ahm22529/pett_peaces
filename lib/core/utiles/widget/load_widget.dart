import 'package:flutter/material.dart';

class Loadwidgwt extends StatelessWidget {
  const Loadwidgwt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
      color: Colors.orange,
    ));
  }
}
