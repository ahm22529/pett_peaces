import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sizeconfig.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

import 'package:pett_peaces/fetures/courses/presention/view/widget/location.dart';
import 'package:pett_peaces/fetures/hotels/presention/manager/hotel/hotel_cubit.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/buttomcomfrim.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/comfrimbook.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/headerhotel.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/tabbar.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class BodyHotel extends StatefulWidget {
  final UserEntitymodel userEntitymodel;

  BodyHotel({super.key, required this.userEntitymodel});
  @override
  State<BodyHotel> createState() => _BodyHotelState();
}

class _BodyHotelState extends State<BodyHotel> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    BlocProvider.of<HotelCubit>(context).getdata(
      endpoint: "hotel",
      token: widget.userEntitymodel.token,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HotelCubit, HotelState>(
      listener: (context, state) {
        // TODO: implement listener
      },
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              state.hotelresponse.ser[0].namee,
                              style: AppStyles.stylesemi20(context)
                                  .copyWith(color: Colors.black),
                            ),
                            location(
                              adderss: state.hotelresponse.ser[0].adders,
                            ),
                            SizedBox(
                                height: MediaQuery.of(context).size.width <=
                                        SizeConfig.tablet
                                    ? MediaQuery.of(context).size.height * .8
                                    : MediaQuery.of(context).size.height * .5,
                                child: ThreeTabBarExample(
                                  hotelEntity: state.hotelresponse,
                                )),
                          ],
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
                        child: butomcomfrim(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => comfrimbook(
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
          return CircularProgressIndicator();
        }
      },
    );
  }
}
