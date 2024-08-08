import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/custom_widget_fauiler.dart';
import 'package:pett_peaces/core/utiles/widget/load_widget.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/entity/exambel_details_enity.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/manager/featch/exambelcubit_cubit.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/appbar.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/list_viewa_dvance.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/search.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/no_iteam.dart';

class BodyExample extends StatefulWidget {
  const BodyExample({super.key, required this.userEntitymodel});

  final UserEntity userEntitymodel;

  @override
  State<BodyExample> createState() => _BodyExampleState();
}

class _BodyExampleState extends State<BodyExample> {
  Timer? debounce;
  final ScrollController _scrollController = ScrollController();
  int currentPage = 1;
  bool isLoadingMore = false;
  String titel = "الامثله والنصايح";
  List<ExambelEnitydetails> items = [];
  TextEditingController textEditingController = TextEditingController();
  final GlobalKey _listViewKey = GlobalKey(); // تأكد من استخدام مفتاح فريد هنا

  @override
  void initState() {
    super.initState();
    _loadData();
    _scrollController.addListener(_onScroll);
  }

  void _loadData() {
    context.read<ExambelcubitCubit>().getdata(
        endpoint: "posts?page=$currentPage",
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

  void updateTitel(String tag) {
    setState(() {
      titel = tag;
    });
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
                BlocListener<ExambelcubitCubit, ExambelcubitState>(
                  listener: (context, state) {
                    // TODO: implement listener

                    if (state is Update) {
                      setState(() {
                        titel = state.tag;
                      });
                    }
                  },
                  child: AppbarExapmbe(
                    onPressed: () {
                      setState(() {
                        currentPage = 1;
                        items.clear(); // مسح العناصر السابقة عند التحديث
                      });
                      context.read<ExambelcubitCubit>().getdata(
                          endpoint: "posts?page=$currentPage",
                          token: widget.userEntitymodel.token);
                      context
                          .read<ExambelcubitCubit>()
                          .updateheadertitel("الامثله والنصايح");
                    },
                    name: titel,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TitelappbarExam(
                  name: 'ابحث عن الامثله والنصايح ',
                  userEntitymodel: widget.userEntitymodel,
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
                return const SliverToBoxAdapter(child: CustomWidgetfauier());
              }

              if (state is Exambelcubitsucess ||
                  state is Exambelcubitsucessserch ||
                  state is Exambelcubitsucestag) {
                if (items.isEmpty) {
                  return const NoIteam();
                }
                return ListViewAdvanced(
                  key: _listViewKey, // استخدم مفتاح فريد هنا
                  entity: items,
                  onPressed: () {
                    updateTitel;
                  },
                  userEntity: widget.userEntitymodel,
                );
              } else {
                return const SliverToBoxAdapter(
                  child: Loadwidgwt(),
                );
              }
            },
            listener: (BuildContext context, ExambelcubitState state) {
              if (state is Exambelcubitsucess) {
                // تحقق مما إذا كانت العناصر موجودة بالفعل قبل الإضافة
                final existingIds = items.map((item) => item.idd).toSet();
                final newItems = state.ex.examel
                    .where((item) => !existingIds.contains(item.idd))
                    .toList();
                items.addAll(newItems);
              }
              if (state is Exambelcubitsucessserch) {
                items = state.ex.examel;
              }
              if (state is Exambelcubitsucestag) {
                items = state.ex.examel;
              }
            },
          ),
        ],
      ),
    );
  }
}
