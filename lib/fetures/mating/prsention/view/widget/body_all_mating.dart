import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/sellerdetails.dart';

import 'package:pett_peaces/fetures/mating/prsention/manager/cubit/all_mating_cubit.dart';
import 'package:pett_peaces/fetures/mating/prsention/view/widget/all_mating_detailes.dart';

import 'package:pett_peaces/fetures/mating/prsention/view/widget/body_all_mating_anmiles.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class BodyAllMating extends StatefulWidget {
  const BodyAllMating({super.key, required this.userEntitymodel});
  final UserEntitymodel userEntitymodel;
  @override
  State<BodyAllMating> createState() => _CustomGridViewstoreState();
}

class _CustomGridViewstoreState extends State<BodyAllMating> {
  final ScrollController _scrollController = ScrollController();
  int currentPage = 1;
  bool isLoadingMore = false;
  List products = [];

  @override
  void initState() {
    super.initState();

    _loadData();
    _scrollController.addListener(_onScroll);
  }

  void _loadData() {
    context.read<AllMatingCubit>().getMating(
        endpoint: "animal-mating", token: widget.userEntitymodel.token);
  }

  void _onScroll() {
    if (_scrollController.position.atEdge &&
        _scrollController.position.pixels != 0 &&
        !isLoadingMore) {
      setState(() {
        isLoadingMore = true;
        currentPage++;
      });
      _loadData();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AllMatingCubit, AllMatingState>(
      listener: (context, state) {
        if (state is Allmatingsucess) {
          setState(() {
            isLoadingMore = false;
            // إضافة العناصر الجديدة في بداية قائمة المنتجات
            products.insertAll(0, state.matingEntity.da);
          });
        }
      },
      builder: (context, state) {
        if (state is AllMatingfauiler) {
          return Center(child: Text(state.errmas));
        }
        if (state is Allmatingsucess || isLoadingMore) {
          return GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,
              crossAxisSpacing:
                  MediaQuery.of(context).size.width >= 410 ? 10 : 0,
              crossAxisCount: 2,
              childAspectRatio: 168 / 175, // نسبة العرض إلى الارتفاع
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => AllMatingDetailesview(
                                anmiles: products[index],
                              ))),
                  child: BodyAllMatingAnmiles(
                    selEntity: products[index],
                    img: '',
                  ));
            },
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
