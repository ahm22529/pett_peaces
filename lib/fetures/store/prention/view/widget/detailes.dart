import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/store/data/repo/repo_imp.dart';
import 'package:pett_peaces/fetures/store/domain/repo.dart';

import 'package:pett_peaces/fetures/store/prention/manager/fetachproductdetailk/fetech_product_details_cubit.dart';

import 'package:pett_peaces/fetures/store/prention/view/widget/bodydetails.dart';

class DetailesView extends StatelessWidget {
  StoreRepo storeRepo = StoreRepoImp();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetechProductDetailsCubit(storeRepo),
      child: const Scaffold(
        body: BodyDetails(),
      ),
    );
  }
}
