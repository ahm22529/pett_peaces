import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';

import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/manager/featch/exambelcubit_cubit.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/listviewadvance.dart';

class BodyExample extends StatefulWidget {
  const BodyExample({super.key});

  @override
  State<BodyExample> createState() => _BodyExampleState();
}

class _BodyExampleState extends State<BodyExample> {
  final ScrollController _scrollController = ScrollController();
  int currentPage = 1;
  bool isLoadingMore = false;
  List items = []; // قائمة لتخزين العناصر

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
              "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNjM3NDI0LCJleHAiOjE3MjIyNDIyMjQsIm5iZiI6MTcyMTYzNzQyNCwianRpIjoid2ZQU1o0eVZzZ0NGSFhVNiIsInN1YiI6IjEwNiIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.4dS3VEbXlOKfR1PCwnw0pNbXE9-P6SxdrwpVJlQUku8",
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
    return BlocConsumer<ExambelcubitCubit, ExambelcubitState>(
      listener: (context, state) {
        if (state is Exambelcubitsucess) {
          setState(() {
            isLoadingMore = false;
            // دمج العناصر الجديدة مع العناصر القديمة
            items.addAll(state.ex.examel);
          });
        }
      },
      builder: (context, state) {
        if (state is Exambelcubitsucess || isLoadingMore) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CustomScrollView(
              controller: _scrollController,
              slivers: [
                const SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 73,
                      ),
                      customAppbar(
                        name: 'الامثله والنصائح',
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
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return ListViewAdvanced(
                        entity: items[index],
                      );
                    },
                    childCount: items.length,
                  ),
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
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
