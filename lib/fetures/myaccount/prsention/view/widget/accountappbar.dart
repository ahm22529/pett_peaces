import 'package:flutter/material.dart';

class acountappbar extends StatefulWidget {
  final VoidCallback toggleEditingMode, togglecacelingMode;

  const acountappbar({
    Key? key,
    required this.toggleEditingMode,
    required this.togglecacelingMode,
  }) : super(key: key);

  @override
  State<acountappbar> createState() => _acountappbarState();
}

class _acountappbarState extends State<acountappbar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("Asset/image/Back.png"),
        Spacer(),
        GestureDetector(
            onTap: widget.togglecacelingMode,
            child: Image.asset("Asset/image/dasdasd.png")),
        SizedBox(
          width: 15,
        ),
        GestureDetector(
          onTap: widget.toggleEditingMode,
          child: Image.asset("Asset/image/fff.png"),
        ),
      ],
    );
  }
}
