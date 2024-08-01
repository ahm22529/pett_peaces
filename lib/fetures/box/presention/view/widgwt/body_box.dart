import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/custom_widget_fauiler.dart';

import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/core/utiles/widget/load_widget.dart';
import 'package:pett_peaces/fetures/box/presention/manager/cubit/getbox_cubit.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/contant_body_box.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Bodybox extends StatefulWidget {
  final UserEntitymodel userEntitymodel;
  const Bodybox({super.key, required this.userEntitymodel});

  @override
  State<Bodybox> createState() => _BodyboxState();
}

class _BodyboxState extends State<Bodybox> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<GetboxCubit>(context)
        .getBox(endpoint: "cart/show", token: widget.userEntitymodel.token);
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const customAppbar(name: 'السله'),
        ),
        body: BlocConsumer<GetboxCubit, GetboxState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            if (state is Getboxsucess) {
              return ContantBodyBox(
                userEntitymodel: widget.userEntitymodel,
                boxEntity: state.boxEntity,
              );
            } else if (state is Getboxfauiler) {
              return CustomWidgetfauier();
            } else {
              return Loadwidgwt();
            }
          },
        ));
  }
}
