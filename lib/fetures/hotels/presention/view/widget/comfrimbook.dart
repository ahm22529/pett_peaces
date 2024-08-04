import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/anmailes/data/repo/repoimp.dart';

import 'package:pett_peaces/fetures/anmailes/domin/repo/repo.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/fetechmyanmiles/fetach_my_anmiles_cubit.dart';
import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';
import 'package:pett_peaces/fetures/hotels/data/repo/hotel_rep_imp.dart';
import 'package:pett_peaces/fetures/hotels/domain/entity/aboutus_entity.dart';
import 'package:pett_peaces/fetures/hotels/domain/repo/hotelrep.dart';
import 'package:pett_peaces/fetures/hotels/presention/manager/cubit/book_cubit.dart';

import 'package:pett_peaces/fetures/hotels/presention/view/widget/bodycomfrim.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Comfrimbook extends StatefulWidget {
  final HotelEntity hotelEntity;

  final List<AnmilesEntity> anmiles;
  const Comfrimbook({
    super.key,
    required this.hotelEntity,
    required this.anmiles,
  });
  @override
  State<Comfrimbook> createState() => _ComfrimbookState();
}

class _ComfrimbookState extends State<Comfrimbook> {
  Hotelrep hotelrep = HotelRepImp();
  AnmilesRepo anmilesRepo = AnimelsRepoImp();
  @override
  void initState() {
    // TODO: implement initState
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
        body: BlocConsumer<FetachMyAnmilesCubit, FetachMyAnmilesState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return Bodycomfrimbook(
              hotelEntity: widget.hotelEntity,
              anmiles: widget.anmiles,
            );
          },
        ),
      ),
    );
  }
}
