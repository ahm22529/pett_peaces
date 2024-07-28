import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/coteching/cotactcoting.dart';

import 'package:pett_peaces/fetures/coteching/presention/manager/featchallcotchig/fetachingallcout_cubit.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/iteamgridview.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/iteamgridview.dart';

import 'package:pett_peaces/fetures/infodoctor/presention/view/infodoctor.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class gridviewco extends StatefulWidget {
  const gridviewco({super.key, required this.userEntitymodel});
  final UserEntitymodel userEntitymodel;
  @override
  State<gridviewco> createState() => _CustomGridViewstoreState();
}

class _CustomGridViewstoreState extends State<gridviewco> {
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
    context.read<FetachingallcoutCubit>().getdata(
        endpoint: "users/trainers?page=$currentPage",
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
    return BlocConsumer<FetachingallcoutCubit, FetachingallcoutState>(
      listener: (context, state) {
        if (state is Fetachingallcoutsucess) {
          setState(() {
            isLoadingMore = false;
            // دمج العناصر الجديدة مع العناصر القديمة
            products.addAll(state.coatchEntiityFrist.coatch);
          });
        }
        if (state is Fetachingallcoutsucessserach) {
          setState(() {
            isLoadingMore = false;
            // دمج العناصر الجديدة مع العناصر القديمة
            products = state.coatchEntiityFrist.coatch;
          });
        }
      },
      builder: (context, state) {
        if (state is Fetachingallcoutfaulerl) {
          return Center(child: Text(state.errmas));
        }
        if (state is Fetachingallcoutsucess ||
            isLoadingMore ||
            state is Fetachingallcoutsucessserach) {
          return GridView.builder(
            controller: _scrollController,
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
                childAspectRatio: 167 / 188),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  log(MediaQuery.of(context).size.width.toString());
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (builder) => Cotactcoting(
                        cotachEntity: products[index],
                      ),
                    ),
                  );
                },
                child: CustomgridviewDoctoriteam(
                  cotachEntity: products[index],
                ),
              );
            },
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
