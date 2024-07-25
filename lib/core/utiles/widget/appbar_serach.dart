import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/continertextfiled.dart';

class Appbarsearch extends StatefulWidget {
  const Appbarsearch({
    super.key,
    required this.name,
    required this.fetchPredictions,
    required this.textEditingController,
    this.color = Colors.white,
  });
  final TextEditingController textEditingController;
  final String name;
  final VoidCallback fetchPredictions;
  final Color color;

  @override
  State<Appbarsearch> createState() => _AppbarsearchState();
}

class _AppbarsearchState extends State<Appbarsearch> {
  Timer? debounce;

  @override
  void initState() {
    super.initState();
    fetchPredictions();
  }

  void fetchPredictions() {
    widget.fetchPredictions();
  }

  @override
  void dispose() {
    widget.textEditingController.dispose();
    debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: continertextfiled(
            name: widget.name,
            textEditingController: widget.textEditingController,
          ),
        ),
        IconButton(
          icon: Image.asset('Asset/image/filter.png'),
          onPressed: () {},
        ),
      ],
    );
  }
}
