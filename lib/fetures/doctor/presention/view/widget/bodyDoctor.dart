import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/doctor/presention/manager/cubit/fetchdoctor_cubit.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/customgraidviewdoctor.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/titelappbar.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class BodyDocoter extends StatefulWidget {
  const BodyDocoter({super.key, required this.userEntitymodel});
  final UserEntitymodel userEntitymodel;
  @override
  State<BodyDocoter> createState() => _BodyDocoterState();
}

class _BodyDocoterState extends State<BodyDocoter> {
  @override
  void initState() {
    super.initState();
  }

  int currentPage = 1;
  bool isLoadingMore = false;
  List products = [];

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 73),
        child: Column(
          children: [
            customAppbar(name: "الاطباء"),
            SizedBox(height: 24),
            TitelappbarDoctore(
              name: 'ابحث عن الأطباء ',
              userEntitymodel: widget.userEntitymodel,
            ),
            SizedBox(height: 15),
            Expanded(
                child: CustomGridViewDoctor(
              userEntitymodel: widget.userEntitymodel,
            )),
          ],
        ),
      );
    }
  }
}
