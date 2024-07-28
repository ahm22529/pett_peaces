import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/appbar_serach.dart';
import 'package:pett_peaces/fetures/bayandseller/data/repo/repo_imp.dart';
import 'package:pett_peaces/fetures/bayandseller/domain/repo/buyandsell_entity.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/manager/cubit/sel_cubit.dart';

import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/gridview.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/titelappbar.dart';

class SellerAndBuyer extends StatefulWidget {
  const SellerAndBuyer({super.key});

  @override
  State<SellerAndBuyer> createState() => _SellerAndBuyerState();
}

class _SellerAndBuyerState extends State<SellerAndBuyer> {
  Buyandsell sell = SellRepoImp();
  TextEditingController textEditingController = TextEditingController();
  Timer? debounce;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SelCubit(sell),
      child: Scaffold(
        backgroundColor: const Color(0xFFFDFDFD),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFA44A),
          elevation: 0,
          automaticallyImplyLeading:
              false, // hides the default leading widget on the AppBar
          title: Appbarsearch(
            name: 'ابحث عن المنتجات',
            fetchPredictions: fetchPredictions,
            textEditingController: textEditingController,
          ),
        ),
        body: const bodysellerandbuyer(),
      ),
    );
  }

  void fetchPredictions() {
    textEditingController.addListener(() {
      if (debounce?.isActive ?? false) {
        debounce?.cancel();
      }
      debounce = Timer(const Duration(milliseconds: 300), () {
        BlocProvider.of<SelCubit>(context).searchProducts(
          endpoint: "buy-sell-animal/all",
          token:
              "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNTQ2MjkxLCJleHAiOjE3MjIxNTEwOTEsIm5iZiI6MTcyMTU0NjI5MSwianRpIjoiNmp0MDdDcVVjUnZBNkVrQyIsInN1YiI6IjU4IiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.sbgX8KCFnG6Fr1XxtIOaQ8-2aERTiPVaomS23DD7P2g",
          query: {"search": textEditingController.text},
        );
      });
    });
  }
}
