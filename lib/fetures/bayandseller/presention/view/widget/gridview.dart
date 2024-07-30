import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/manager/cubit/sel_cubit.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/sellerdetails.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/bodyseller.dart';

class bodysellerandbuyer extends StatefulWidget {
  const bodysellerandbuyer({
    super.key,
  });

  @override
  State<bodysellerandbuyer> createState() => _bodysellerandbuyerState();
}

class _bodysellerandbuyerState extends State<bodysellerandbuyer> {
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
      token:
          "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIyMTU2MTY3LCJleHAiOjE3MjI3NjA5NjcsIm5iZiI6MTcyMjE1NjE2NywianRpIjoiU0ZwU0RlRnFUaEJHY0Q3aSIsInN1YiI6IjExNiIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.jwLNZxYvQ4_oMPksJfqbLtUazH6Spw8eLuK68veYpQU",
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
            print("products.length");
          });
        }
      },
      builder: (context, state) {
        if (state is Selfauiler) {
          return Center(child: Text(state.errmass));
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
          return CircularProgressIndicator();
        }
      },
    );
  }
}
