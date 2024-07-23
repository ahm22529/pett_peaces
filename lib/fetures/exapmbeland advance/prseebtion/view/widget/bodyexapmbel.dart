import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/manager/featch/exambelcubit_cubit.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/listviewadvance.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/continertextfiled.dart';

class BodyExample extends StatefulWidget {
  const BodyExample({super.key});

  @override
  State<BodyExample> createState() => _BodyExampleState();
}

class _BodyExampleState extends State<BodyExample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<ExambelcubitCubit>(context).getdata(
        endpoint: "posts",
        token:
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNjM3NDI0LCJleHAiOjE3MjIyNDIyMjQsIm5iZiI6MTcyMTYzNzQyNCwianRpIjoid2ZQU1o0eVZzZ0NGSFhVNiIsInN1YiI6IjEwNiIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.4dS3VEbXlOKfR1PCwnw0pNbXE9-P6SxdrwpVJlQUku8");
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExambelcubitCubit, ExambelcubitState>(
      builder: (context, state) {
        if (state is Exambelcubitsucess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CustomScrollView(
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
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 24,
                      ),
                      continertextfiled(
                        name: 'ابحث عن الأمثلة',
                        textEditingController: TextEditingController(),
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 24,
                  ),
                ),
                ListViewAdvanced(
                  entity: state.ex,
                ),
              ],
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
