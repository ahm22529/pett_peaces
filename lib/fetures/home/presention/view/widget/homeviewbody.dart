import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/home/presention/manager/cubit/home_cubit.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/addanmiles.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/anmiles.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/anmileshome.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/gridviewstore.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/grisviewservices.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/headersection.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/listviewstore.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/silder.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/userinfo.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  _HomeViewBodyState createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<HomeCubit>(context).getdata(
        endpoint: "home",
        token:
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxMjkxNzU5LCJleHAiOjE3MjE4OTY1NTksIm5iZiI6MTcyMTI5MTc1OSwianRpIjoiQkZxS1dWTGxhWFRmVjR5SyIsInN1YiI6IjI4IiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.w5SxYXDiu3a_xWcblwcl6u5l-xAywNHqPOvva8-Kwjw");
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is HomeSucess) {
          log("message");
        }
      },
      builder: (context, state) {
        if (state is HomeSucess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .05,
                    ),
                    UserInfoCard(),
                    const SizedBox(
                      height: 24,
                    ),
                    ImageSlider(
                      img: state.homeEntity.paners,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const gridviewservices(),
                    const SizedBox(
                      height: 32,
                    ),
                    Visibility(
                      visible:
                          state.homeEntity.anmilesEntity == null ? false : true,
                      child: const Column(
                        children: [
                          Headersection(
                            titel1: 'حيواناتي',
                            titel2: 'عرض المزيد',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          anmileshome(),
                          SizedBox(
                            height: 35,
                          ),
                        ],
                      ),
                    ),
                    const Headersection(
                      titel1: ' المتجر',
                      titel2: 'عرض المزيد',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    gridviewstore(
                      producEntity: state.homeEntity.product,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Image.asset("Asset/image/Frame 1000004499.png"),
                    const SizedBox(
                      height: 32,
                    ),
                    const Headersection(
                      titel1: 'كورسات تعليمية',
                      titel2: 'عرض المزيد',
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    listviewCourses(
                      cours: state.homeEntity.cou,
                    ),
                    const SizedBox(
                      height: 56,
                    )
                  ],
                ),
              ),
            ),
          );
        } else if (state is Homefailuer) {
          return Text(state.errmas);
        } else {
          return const Center(child: const CircularProgressIndicator());
        }
      },
    );
  }
}
