import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/custom_widget_fauiler.dart';
import 'package:pett_peaces/core/utiles/widget/load_widget.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/manager/cubit/sel_cubit.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/seller_details.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/body_seller.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Bodysellerandbuyer extends StatefulWidget {
  final UserEntity userEntity;
  const Bodysellerandbuyer({
    super.key,
    required this.userEntity,
  });

  @override
  State<Bodysellerandbuyer> createState() => _BodysellerandbuyerState();
}

class _BodysellerandbuyerState extends State<Bodysellerandbuyer> {
  final ScrollController _scrollController = ScrollController();
  int currentPage = 1;
  bool isLoadingMore = false;
  List products = [];
  // قائمة لتخزين المنتجات

  @override
  void initState() {
    super.initState();
    _loadData();
    _scrollController.addListener(_onScroll);
  }

  void _loadData() {
    context.read<SelCubit>().getAllSell(
      endpoint: "buy-sell-animal/all?page=$currentPage",
      token: widget.userEntity.token,
      data: {},
    );
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
    return BlocConsumer<SelCubit, SelState>(
      listener: (context, state) {
        if (state is Selsucess) {
          setState(() {
            isLoadingMore = false;
            // دمج العناصر الجديدة مع العناصر القديمة
            products.addAll(state.listSelEnity.sell);
          });
        }
        if (state is Selsucessserch) {
          setState(() {
            isLoadingMore = false;
            // دمج العناصر الجديدة مع العناصر القديمة
            products = state.listSelEnity.sell;
          });
        }
      },
      builder: (context, state) {
        if (state is Selfauiler) {
          return CustomWidgetfauier();
        }
        if (state is Selsucess || isLoadingMore || state is Selsucessserch) {
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
                          builder: (builder) => Sellerdetails(
                                anmiles: products[index],
                              ))),
                  child: BodySeller(
                    selEntity: products[index],
                  ));
            },
          );
        } else {
          return const Loadwidgwt();
        }
      },
    );
  }
}
