import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pett_peaces/fetures/bayandseller/presention/manager/cubit/sel_cubit.dart';


import 'package:pett_peaces/fetures/mating/data/repo/repo.dart';
import 'package:pett_peaces/fetures/mating/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/mating/prsention/manager/cubit/all_mating_cubit.dart';

import 'package:pett_peaces/fetures/mating/prsention/view/widget/body_all_mating.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/data/repo/repo_imp.dart';
import 'package:pett_peaces/fetures/store/domain/repo.dart';
import 'package:pett_peaces/fetures/store/prention/manager/featchallproduct/fectch_product_cubit.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/titelappbar.dart';

class AllAnmilesMating extends StatefulWidget {
  const AllAnmilesMating({super.key, required this.userEntitymodel});
  final UserEntitymodel userEntitymodel;
  @override
  State<AllAnmilesMating> createState() => _SellerAndBuyerState();
}

class _SellerAndBuyerState extends State<AllAnmilesMating> {
  StoreRepo sell = StoreRepoImp();
  TextEditingController textEditingController = TextEditingController();
  Timer? debounce;
  Matingrepo matingrepo = Matingrepoimp();

  @override
  void fetchPredictions() {
    textEditingController.addListener(() {
      if (debounce?.isActive ?? false) {
        debounce?.cancel();
      }
      debounce = Timer(const Duration(milliseconds: 300), () {
        BlocProvider.of<SelCubit>(context).searchProducts(
          endpoint: "users/doctors",
          token: widget.userEntitymodel.token,
          query: {"key_words": textEditingController.text},
        );
      });
    });
  }

  StoreRepo storeRepo = StoreRepoImp();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AllMatingCubit(matingrepo),
        ),
        BlocProvider(
          create: (context) => FectchProductCubit(storeRepo),
        )
      ],
      child: Scaffold(
        backgroundColor: const Color(0xFFFDFDFD),
        appBar: AppBar(
            backgroundColor: const Color(0xFFFFA44A),
            elevation: 0,
            automaticallyImplyLeading:
                false, // hides the default leading widget on the AppBar
            title: Titelappbar(
              name: '',
              userEntitymodel: widget.userEntitymodel,
            )),
        body: BodyAllMating(
          userEntitymodel: widget.userEntitymodel,
        ),
      ),
    );
  }
}
