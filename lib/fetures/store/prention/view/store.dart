import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/box/data/repo/repo_Imp.dart';
import 'package:pett_peaces/fetures/box/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/box/presention/manager/addtobox/add_box_cubit.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/data/repo/repo_imp.dart';
import 'package:pett_peaces/fetures/store/domain/repo.dart';
import 'package:pett_peaces/fetures/store/prention/manager/featchallproduct/fectch_product_cubit.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/all_platform.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/titela_ppbar.dart';

class Store extends StatefulWidget {
  const Store({super.key, required this.pro, required this.userEntitymodel});
  final List<ProducEntity> pro;
  final UserEntity userEntitymodel;
  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  final StoreRepo storeRepo = StoreRepoImp();
  final Boxrepo boxrepo = BoxRepoImp();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FectchProductCubit(storeRepo),
        ),
        BlocProvider(
          create: (context) => AddBoxCubit(boxrepo),
        )
      ],
      child: Scaffold(
        backgroundColor: const Color(0xFFFDFDFD),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(
              kToolbarHeight + 20), // increase the height by 10px
          child: AppBar(
            backgroundColor: const Color(0xFFFFA44A),
            elevation: 0,
            automaticallyImplyLeading:
                false, // hides the default leading widget on the AppBar
            title: Titelappbar(
              name: 'ابحث عن المنتجات',
              userEntitymodel: widget.userEntitymodel,
            ),
          ),
        ),
        body: Allplatform(
          pro: widget.pro,
          userEntitymodel: widget.userEntitymodel,
        ),
      ),
    );
  }
}
