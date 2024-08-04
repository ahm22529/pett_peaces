import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pett_peaces/fetures/anmailes/presetion/manager/fetechmyanmiles/fetach_my_anmiles_cubit.dart';
import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';
import 'package:pett_peaces/fetures/hotels/presention/manager/hotel/hotel_cubit.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/buttomcomfrim.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/comfrimbook.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/headerhotel.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/location_serv.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class BodyHotel extends StatefulWidget {
  final UserEntity userEntitymodel;

  const BodyHotel({super.key, required this.userEntitymodel});

  @override
  State<BodyHotel> createState() => _BodyHotelState();
}

class _BodyHotelState extends State<BodyHotel> {
  List<AnmilesEntity> anmiles = [];

  @override
  void initState() {
    super.initState();

    BlocProvider.of<HotelCubit>(context).getdata(
      endpoint: "hotel",
      token: widget.userEntitymodel.token,
    );

    BlocProvider.of<FetachMyAnmilesCubit>(context)
        .getanmiles(token: widget.userEntitymodel.token, endpoint: "animals/");
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
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(33))),
                        height: MediaQuery.of(context).size.height * .3,
                        child: Headerhotel(
                          hotelEntity: state.hotelresponse,
                        ),
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
                      child: BlocListener<FetachMyAnmilesCubit,
                          FetachMyAnmilesState>(
                        listener: (context, state) {
                          if (state is FetachMyAnmsucesss) {
                            setState(() {
                              anmiles = state.lis.anmiles;
                            });
                          }
                        },
                        child: Butomcomfrim(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (builder) => Comfrimbook(
                                  hotelEntity: state.hotelresponse,
                                  anmiles: anmiles,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
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
