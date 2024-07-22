import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sizeconfig.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/continerbuttom.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/location.dart';
import 'package:pett_peaces/fetures/hotels/presention/manager/hotel/hotel_cubit.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/buttomcomfrim.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/comfrimbook.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/headerhotel.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/tabbar.dart';

class BodyHotel extends StatefulWidget {
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
        token:
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNjMyMzQ5LCJleHAiOjE3MjIyMzcxNDksIm5iZiI6MTcyMTYzMjM0OSwianRpIjoiSm1pUkFMZlFFbmtaUEhXVyIsInN1YiI6Ijk2IiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.uyrEk0t3CkOp2HKgtqTCRmS7h0MiXDPp8j6SkZPPF2Y");
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
                             location(hotelresponse: state.hotelresponse,),
                            SizedBox(
                                height: MediaQuery.of(context).size.width <=
                                        SizeConfig.tablet
                                    ? MediaQuery.of(context).size.height * .8
                                    : MediaQuery.of(context).size.height * .5,
                                child: ThreeTabBarExample(hotelEntity: state.hotelresponse,)),
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
                        color: Colors.white,
                        child: butomcomfrim(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => comfrimbook()));
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
