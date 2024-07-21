import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pett_peaces/fetures/store/prention/manager/featchallproduct/fectch_product_cubit.dart';
import 'package:pett_peaces/fetures/store/prention/manager/fetachproductdetailk/fetech_product_details_cubit.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/customcard.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/headerdetailes.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/summary.dart';

class BodyDetails extends StatefulWidget {
  const BodyDetails({
    super.key,
  });

  @override
  State<BodyDetails> createState() => _BodyDetailsState();
}

class _BodyDetailsState extends State<BodyDetails> {
  @override
  void initState() {
    BlocProvider.of<FetechProductDetailsCubit>(context).getdata(
        endpoint: "products/",
        token:
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNTQ2MjkxLCJleHAiOjE3MjIxNTEwOTEsIm5iZiI6MTcyMTU0NjI5MSwianRpIjoiNmp0MDdDcVVjUnZBNkVrQyIsInN1YiI6IjU4IiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.sbgX8KCFnG6Fr1XxtIOaQ8-2aERTiPVaomS23DD7P2g",
        id: "3");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetechProductDetailsCubit, FetechProductDetailsState>(
      builder: (context, state) {
        if (state is FetechProductDetailssucess) {
          return SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    Headerdetailes(
                      producEntity: state.producEntity,
                    ),
                    summary(
                      producEntity: state.producEntity,
                    ),
                  ],
                ),
                Positioned(
                    top: state.producEntity.pro.length <= 2
                        ? MediaQuery.of(context).size.height * .37
                        : MediaQuery.of(context).size.height * .39,
                    right: 5,
                    child: Image.asset("Asset/image/pawprint 8.png")),
                Positioned(
                    right: 20,
                    top: state.producEntity.pro.length <= 2
                        ? MediaQuery.of(context).size.height * .4
                        : MediaQuery.of(context).size.height * .46,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: CustomCard(
                        producEntity: state.producEntity,
                      ),
                    ))
              ],
            ),
          );
        } else {
          return const Center(
              child: CircularProgressIndicator(
            color: Colors.orange,
          ));
        }
      },
    );
  }
}
