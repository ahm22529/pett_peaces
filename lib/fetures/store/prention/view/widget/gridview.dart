import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/iteamstore.dart';
import 'package:pett_peaces/fetures/store/prention/manager/featchallproduct/fectch_product_cubit.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/detailes.dart';

class CustomGridViewstore extends StatefulWidget {
  const CustomGridViewstore({super.key});
  @override
  State<CustomGridViewstore> createState() => _CustomGridViewstoreState();
}

class _CustomGridViewstoreState extends State<CustomGridViewstore> {
  final ScrollController _scrollController = ScrollController();
  int currentPage = 1;
  bool isLoadingMore = false;
  List products = []; // قائمة لتخزين المنتجات

  @override
  void initState() {
    super.initState();
    _loadData();
    _scrollController.addListener(_onScroll);
  }

  void _loadData() {
    context.read<FectchProductCubit>().getdata(
          endpoint: "products?page=$currentPage",
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
    return BlocConsumer<FectchProductCubit, FectchProductState>(
      listener: (context, state) {
        if (state is FectchProductsucess) {
          setState(() {
            isLoadingMore = false;
            // دمج العناصر الجديدة مع العناصر القديمة
            products.addAll(state.producEntity.product);
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
                    MaterialPageRoute(builder: (_) => DetailesView()),
                  );
                },
                child: IteamStore(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => DetailesView()),
                    );
                  },
                  producEntity: products[index],
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
