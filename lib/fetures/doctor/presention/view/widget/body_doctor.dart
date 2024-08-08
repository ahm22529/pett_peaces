import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/custom_graid_view_doctor.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/titel_appbar.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class BodyDocoter extends StatefulWidget {
  const BodyDocoter({super.key, required this.userEntitymodel});
  final UserEntity userEntitymodel;
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
    {
      return Padding(
        padding: const EdgeInsets.only(right: 20.0, left: 0, top: 73),
        child: Column(
          children: [
            const CustomAppbar(name: "الاطباء"),
            const SizedBox(height: 24),
            TitelappbarDoctore(
              name: 'ابحث عن الأطباء ',
              userEntitymodel: widget.userEntitymodel,
            ),
            const SizedBox(height: 15),
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
