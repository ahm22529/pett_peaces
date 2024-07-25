import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/anmailes/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/anmailes/domin/repo/repo.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/addanmiles/add_amiles_cubit.dart';

class buttomtext extends StatefulWidget {
  final Color color, colortext;
  final String text;

  const buttomtext({
    Key? key,
    required this.color,
    required this.text,
    required this.colortext,
    this.onTap,
  }) : super(key: key);

  final void Function()? onTap;

  @override
  State<buttomtext> createState() => _buttomtextState();
}

class _buttomtextState extends State<buttomtext> {
  AnmilesRepo anmilesRepo = AnimelsRepoImp();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddAmilesCubit(anmilesRepo),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.orange),
            color: widget.color,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 9),
            child: Center(
              child: Text(
                widget.text,
                style: AppStyles.stylesemi20(context).copyWith(
                  color: widget.colortext,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
