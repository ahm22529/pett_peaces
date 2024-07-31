import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/iteam_store.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/manager/featchallproduct/fectch_product_cubit.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/detailes.dart';

class CustomGridViewstore extends StatefulWidget {
  const CustomGridViewstore({super.key, required this.userEntitymodel});
  final UserEntitymodel userEntitymodel;
  @override
  State<CustomGridViewstore> createState() => _CustomGridViewstoreState();
}

class _CustomGridViewstoreState extends State<CustomGridViewstore> {
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
    context.read<FectchProductCubit>().getdata(
        endpoint: "products?page=$currentPage",
        token: widget.userEntitymodel.token);
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
    return BlocConsumer<FectchProductCubit, FectchProductState>(
      listener: (context, state) {
        if (state is FectchProductsucess) {
          setState(() {
            isLoadingMore = false;
            // إضافة العناصر الجديدة في بداية قائمة المنتجات
            products.insertAll(0, state.producEntity.product);
          });
        }
      },
      builder: (context, state) {
        if (state is FectchProductfailuer) {
          return Center(child: Text(state.errmass));
        }
        if (state is FectchProductsucess || isLoadingMore) {
          return GridView.builder(
            controller: _scrollController,
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              childAspectRatio: MediaQuery.of(context).size.width <= 600
                  ? .85
                  : MediaQuery.of(context).size.width >= 400
                      ? 2.1
                      : 2.5,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => DetailesView(
                              userEntitymode: widget.userEntitymodel,
                              producEntity: products[index],
                            )),
                  );
                },
                child: IteamStore(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => DetailesView(
                                userEntitymode: widget.userEntitymodel,
                                producEntity: products[index],
                              )),
                    );
                  },
                  producEntity: products[index],
                  userEntitymodel: widget.userEntitymodel,
                ),
              );
            },
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
