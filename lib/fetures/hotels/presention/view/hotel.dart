import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/hotels/data/repo/hotel_rep_imp.dart';
import 'package:pett_peaces/fetures/hotels/domain/repo/hotelrep.dart';
import 'package:pett_peaces/fetures/hotels/presention/manager/hotel/hotel_cubit.dart';

import 'package:pett_peaces/fetures/hotels/presention/view/widget/bodyhotel.dart';

class Hotel extends StatefulWidget {
  @override
  State<Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
  Hotelrep hotelrep = HotelRepImp();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HotelCubit(hotelrep),
      child: Scaffold(
        body: BodyHotel(),
      ),
    );
  }
}
