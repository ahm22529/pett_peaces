import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/bodydetails.dart';

class DetailesView extends StatefulWidget {
  @override
  _DetailesViewState createState() => _DetailesViewState();
}

class _DetailesViewState extends State<DetailesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyDetails(),
    );
  }
}
