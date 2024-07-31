import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/custom_widget_fauiler.dart';
import 'package:pett_peaces/fetures/doctor/presention/manager/cubit/fetchdoctor_cubit.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/iteam_grid_view.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/infodoctor.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
class CustomGridViewDoctor extends StatefulWidget {
  final UserEntitymodel userEntitymodel;
  const CustomGridViewDoctor({super.key, required this.userEntitymodel});
  @override
  State<CustomGridViewDoctor> createState() => _CustomGridViewstoreState();
}

class _CustomGridViewstoreState extends State<CustomGridViewDoctor> {
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
    context.read<FetchdoctorCubit>().getdata(
        endpoint: "users/doctors?page=$currentPage",
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
    return BlocConsumer<FetchdoctorCubit, FetchdoctorState>(
      listener: (context, state) {
        if (state is Fetchdoctorsucess) {
          setState(() {
            isLoadingMore = false;
            // دمج العناصر الجديدة مع العناصر القديمة
            products.addAll(state.doctorEntity.coatch);
          });
        }
        if (state is Fetchdoctorsucessserch) {
          setState(() {
            isLoadingMore = false;
            // دمج العناصر الجديدة مع العناصر القديمة
            products = state.doctorEntity.coatch;
          });
        }
      },
      builder: (context, state) {
        if (state is FetchdoctorfAUILER) {
          return const CustomWidgetfauier();
        }

        if (state is Fetchdoctorsucess ||
            isLoadingMore ||
            state is Fetchdoctorsucessserch) {
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
                child: IteamGridViewDoctor(
                  coatch: products[index],
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
