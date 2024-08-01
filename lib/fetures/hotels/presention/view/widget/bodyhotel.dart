import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/hotels/presention/manager/hotel/hotel_cubit.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/buttomcomfrim.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/comfrimbook.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/headerhotel.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/location_serv.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class BodyHotel extends StatefulWidget {
  final UserEntitymodel userEntitymodel;

  const BodyHotel({super.key, required this.userEntitymodel});
  @override
  State<BodyHotel> createState() => _BodyHotelState();
}

class _BodyHotelState extends State<BodyHotel> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<HotelCubit>(context).getdata(
      endpoint: "hotel",
      token: widget.userEntitymodel.token,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HotelCubit, HotelState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is Hotelsucess) {
          return SafeArea(
            child: Stack(
              children: [
                CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Headerhotel(
                        hotelEntity: state.hotelresponse,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Locationser(
                          name: state.hotelresponse.ser[0].namee,
                          adderss: state.hotelresponse.ser[0].adders,
                          hotelEntity: state.hotelresponse,
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0.0, vertical: 0.0),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        child: Butomcomfrim(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => Comfrimbook(
                                          hotelEntity: state.hotelresponse,
                                        )));
                          },
                        )),
                  ),
                ),
              ],
            ),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
