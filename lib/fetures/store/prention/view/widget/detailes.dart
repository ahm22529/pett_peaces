import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/data/repo/repo_imp.dart';
import 'package:pett_peaces/fetures/store/domain/repo.dart';

import 'package:pett_peaces/fetures/store/prention/manager/fetachproductdetailk/fetech_product_details_cubit.dart';

import 'package:pett_peaces/fetures/store/prention/view/widget/body_details.dart';

class DetailesView extends StatelessWidget {
  StoreRepo storeRepo = StoreRepoImp();
  final UserEntity userEntitymode;
  final ProducEntity producEntity;
  DetailesView(
      {super.key, required this.userEntitymode, required this.producEntity});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetechProductDetailsCubit(storeRepo),
      child: Scaffold(
        body: BodyDetails(
          userEntitymodel: userEntitymode,
          producEntity: producEntity,
        ),
      ),
    );
  }
}
