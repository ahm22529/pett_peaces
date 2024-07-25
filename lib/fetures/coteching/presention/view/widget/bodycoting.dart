import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/appbar_serach.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/account/presention/view/widget/textcontiner.dart';
import 'package:pett_peaces/fetures/coteching/presention/manager/featchallcotchig/fetachingallcout_cubit.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/gridviewdoctor.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/titelappbar.dart';

class BodyCoating extends StatefulWidget {
  @override
  State<BodyCoating> createState() => _BodyCoatingState();
}

class _BodyCoatingState extends State<BodyCoating> {
  final ScrollController _scrollController = ScrollController();
  int currentPage = 1;
  Timer? debounce;
  bool isLoadingMore = false;
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .07,
          ),
          const customAppbar(
            name: 'المدربين',
          ),
          const SizedBox(
            height: 24,
          ),
          Appbarsearch(
            name: 'ابحث عن المدربين',
            fetchPredictions: () {
              textEditingController.addListener(() {
                if (debounce?.isActive ?? false) {
                  debounce?.cancel();
                }
                debounce = Timer(const Duration(milliseconds: 300), () {
                  BlocProvider.of<FetachingallcoutCubit>(context)
                      .searchProducts(
                    endpoint: "users/doctors",
                    token:
                        "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNTQ2MjkxLCJleHAiOjE3MjIxNTEwOTEsIm5iZiI6MTcyMTU0NjI5MSwianRpIjoiNmp0MDdDcVVjUnZBNkVrQyIsInN1YiI6IjU4IiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.sbgX8KCFnG6Fr1XxtIOaQ8-2aERTiPVaomS23DD7P2g",
                    query: {"key_words": textEditingController.text},
                  );
                });
              });
            },
            textEditingController: textEditingController,
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: gridviewco(),
          ),
        ],
      ),
    );
  }
}
