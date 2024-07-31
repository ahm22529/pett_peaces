import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/custom_widget_fauiler.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/core/utiles/widget/load_widget.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/entity/exambel_details_enity.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/manager/featch/exambelcubit_cubit.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/list_viewa_dvance.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/search.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/no_iteam.dart';
class BodyExample extends StatefulWidget {
  const BodyExample({super.key, required this.userEntitymodel});
  final UserEntitymodel userEntitymodel;
  @override
  State<BodyExample> createState() => _BodyExampleState();
}

class _BodyExampleState extends State<BodyExample> {
  Timer? debounce;
  final ScrollController _scrollController = ScrollController();
  int currentPage = 1;
  bool isLoadingMore = false;
  List<ExambelEnitydetails> items = [];
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadData();
    _scrollController.addListener(_onScroll);
  }

  void _loadData() {
    context.read<ExambelcubitCubit>().getdata(
          endpoint: "posts?page=$currentPage",
          token:
              "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIyMjM2Njg5LCJleHAiOjE3MjI4NDE0ODksIm5iZiI6MTcyMjIzNjY4OSwianRpIjoiaXp3ZjFlUG5IS0JOV3Z6TiIsInN1YiI6IjEyMCIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.fkqOMsnicpLCx47OK-OuegkNLk_sQranHL8pFmrU6OI",
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(
                  height: 73,
                ),
                const customAppbar(
                  name: 'الامثله والنصائح',
                ),
                TitelappbarExam(
                  name: 'ابحث عن الامثله والنصايح ',
                  userEntitymodel: widget.userEntitymodel,
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          BlocConsumer<ExambelcubitCubit, ExambelcubitState>(
            builder: (context, state) {
              if (state is Exambelcubitfauleer) {
                return const CustomWidgetfauier();
              }

              if (state is Exambelcubitsucess ||
                  state is Exambelcubitsucessserch) {
                if (items.isEmpty) {
                  return NoIteam();
                }
                return ListViewAdvanced(
                  entity: items,
                );
              } else {
                return const SliverToBoxAdapter(
                  child: Loadwidgwt(),
                );
              }
            },
            listener: (BuildContext context, ExambelcubitState state) {
              if (state is Exambelcubitsucess) {
                items.addAll(state.ex.examel);
              }
              if (state is Exambelcubitsucessserch) {
                items = state.ex.examel;
              }
            },
          ),
          if (isLoadingMore)
            const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }
}
