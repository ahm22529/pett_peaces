import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/appbar_serach.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/coteching/presention/manager/featchallcotchig/fetachingallcout_cubit.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/gridviewdoctor.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class BodyCoating extends StatefulWidget {
  final UserEntitymodel userEntitymodel;

  const BodyCoating({super.key, required this.userEntitymodel});
  @override
  State<BodyCoating> createState() => _BodyCoatingState();
}

class _BodyCoatingState extends State<BodyCoating> {
  final ScrollController _scrollController = ScrollController();
  int currentPage = 1;
  Timer? debounce;
  bool isLoadingMore = false;
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .07,
          ),
          const customAppbar(
            name: 'المدربين',
          ),
          const SizedBox(
            height: 24,
          ),
          Appbarsearch(
            name: 'ابحث عن المدربين',
            fetchPredictions: () {
              textEditingController.addListener(() {
                if (debounce?.isActive ?? false) {
                  debounce?.cancel();
                }
                debounce = Timer(const Duration(milliseconds: 300), () {
                  BlocProvider.of<FetachingallcoutCubit>(context)
                      .searchProducts(
                    endpoint: "users/doctors",
                    token: widget.userEntitymodel.token,
                    query: {"key_words": textEditingController.text},
                  );
                });
              });
            },
            textEditingController: textEditingController,
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: Gridviewco(
              userEntitymodel: widget.userEntitymodel,
            ),
          ),
        ],
      ),
    );
  }
}
