import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/anmailes/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/anmailes/domin/repo/repo.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/cubit/fetach_my_anmiles_cubit.dart';
import 'package:pett_peaces/fetures/hotels/data/repo/hotel_rep_imp.dart';
import 'package:pett_peaces/fetures/hotels/domain/entity/aboutus_entity.dart';
import 'package:pett_peaces/fetures/hotels/domain/repo/hotelrep.dart';
import 'package:pett_peaces/fetures/hotels/presention/manager/cubit/book_cubit.dart';

import 'package:pett_peaces/fetures/hotels/presention/view/widget/bodycomfrim.dart';

class comfrimbook extends StatefulWidget {
  final HotelEntity hotelEntity;

  const comfrimbook({super.key, required this.hotelEntity});
  @override
  State<comfrimbook> createState() => _comfrimbookState();
}

class _comfrimbookState extends State<comfrimbook> {
  Hotelrep hotelrep = HotelRepImp();
  AnmilesRepo anmilesRepo = AnimelsRepoImp();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BookCubit(hotelrep),
        ),
        BlocProvider(
          create: (context) => FetachMyAnmilesCubit(anmilesRepo),
        )
      ],
      child: Scaffold(
        body: Bodycomfrimbook(
          hotelEntity: widget.hotelEntity,
        ),
      ),
    );
  }
}
