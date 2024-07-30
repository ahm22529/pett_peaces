import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/deletmyanmiles/delet_anmiles_cubit.dart';

class acountappbar extends StatefulWidget {
  final VoidCallback toggleEditingMode, togglecacelingMode;
  final void Function()? onTap;
  final String id;
  const acountappbar({
    Key? key,
    required this.toggleEditingMode,
    required this.togglecacelingMode,
    required this.id,
    required this.onTap,
  }) : super(key: key);

  @override
  State<acountappbar> createState() => _acountappbarState();
}

class _acountappbarState extends State<acountappbar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Image.asset("Asset/image/Back.png")),
        Spacer(),
        GestureDetector(
            onTap: widget.onTap, child: Image.asset("Asset/image/dasdasd.png")),
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
