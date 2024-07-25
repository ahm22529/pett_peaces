import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pett_peaces/fetures/coteching/presention/manager/featchallcotchig/fetachingallcout_cubit.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/iteamgridview.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/iteamgridview.dart';

import 'package:pett_peaces/fetures/infodoctor/presention/view/infodoctor.dart';

class gridviewco extends StatefulWidget {
  const gridviewco({super.key});
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
          token:
              "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNTQ2MjkxLCJleHAiOjE3MjIxNTEwOTEsIm5iZiI6MTcyMTU0NjI5MSwianRpIjoiNmp0MDdDcVVjUnZBNkVrQyIsInN1YiI6IjU4IiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.sbgX8KCFnG6Fr1XxtIOaQ8-2aERTiPVaomS23DD7P2g",
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
                      builder: (builder) => IformationDoctore(
                        coatch: products[index],
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
