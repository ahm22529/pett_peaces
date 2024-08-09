import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/my_anmiles.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/sellerand_buy.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/cotacting.dart';
import 'package:pett_peaces/fetures/courses/presention/view/course_list.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/doctor.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/exapmel.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/grid_view_home.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/hotel.dart';
import 'package:pett_peaces/fetures/mating/prsention/view/all_anmiles_mating.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/view/store.dart';

class Gridviewservices extends StatefulWidget {
  const Gridviewservices({
    super.key,
    required this.userEntitymodel,
  });
  final UserEntity userEntitymodel;

  @override
  State<Gridviewservices> createState() => _GridviewservicesState();
}

class _GridviewservicesState extends State<Gridviewservices> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: CustomGridViewHome(
      userEntitymodel: widget.userEntitymodel,
      nav: [
        Hotel(
          userEntitymodel: widget.userEntitymodel,
        ),
        Doctor(
          userEntitymodel: widget.userEntitymodel,
        ),
        Cotching(
          userEntitymodel: widget.userEntitymodel,
        ),
        AllAnmilesMating(
          userEntitymodel: widget.userEntitymodel,
        ),
        Myanmiles(
          userEntitymodel: widget.userEntitymodel,
        ),
        Store(
          pro: [],
          userEntitymodel: widget.userEntitymodel,
        ),
        SellerAndBuyer(
          userEntitymodel: widget.userEntitymodel,
        ),
        Courselist(
          userEntitymodel: widget.userEntitymodel,
        ),
        Example(
          userEntitymodel: widget.userEntitymodel,
        )
      ],
    ));
  }
}
