import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/appbar_serach.dart';
import 'package:pett_peaces/fetures/bayandseller/data/repo/repo_imp.dart';
import 'package:pett_peaces/fetures/bayandseller/domain/repo/buyandsell_entity.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/manager/cubit/sel_cubit.dart';

import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/gridview.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/search.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/titelappbar.dart';

class SellerAndBuyer extends StatefulWidget {
  const SellerAndBuyer({super.key, required this.userEntitymodel});
  final UserEntitymodel userEntitymodel;
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
          title: Titelappbarsell(
            name: 'ابحث عن المنتجات',
            userEntitymodel: widget.userEntitymodel,
          ),
        ),
        body: const bodysellerandbuyer(),
      ),
    );
  }
}
