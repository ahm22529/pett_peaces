import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/anmailes/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/anmailes/domin/repo/repo.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/fetechmyanmiles/fetach_my_anmiles_cubit.dart';
import 'package:pett_peaces/fetures/hotels/data/repo/hotel_rep_imp.dart';
import 'package:pett_peaces/fetures/hotels/domain/repo/hotelrep.dart';
import 'package:pett_peaces/fetures/hotels/presention/manager/hotel/hotel_cubit.dart';

import 'package:pett_peaces/fetures/hotels/presention/view/widget/bodyhotel.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Hotel extends StatefulWidget {
  final UserEntity userEntitymodel;

  const Hotel({super.key, required this.userEntitymodel});
  @override
  State<Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
  Hotelrep hotelrep = HotelRepImp();
  AnmilesRepo anmilesRepo = AnimelsRepoImp();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FetachMyAnmilesCubit(anmilesRepo),
        ),
        BlocProvider(
          create: (context) => HotelCubit(hotelrep),
        )
      ],
      child: Scaffold(
        body: BodyHotel(
          userEntitymodel: widget.userEntitymodel,
        ),
      ),
    );
  }
}
