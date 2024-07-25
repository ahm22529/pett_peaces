import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/entity/exambel_details_enity.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/manager/cubit/tag_cubit.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/body.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/hatag.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/iteamcontiner.dart';

class HeaderAndBody extends StatelessWidget {
  const HeaderAndBody({
    super.key,
    required this.examel,
  });
  final ExambelEnitydetails examel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: List.generate(examel.tag.length, (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: BlocListener<TagCubit, TagState>(
                listener: (context, state) {
                  if (state is Tagsucess) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Hastag(
                          examel: state.ex.examel[0],
                        ),
                      ),
                    );
                  }
                },
                child: CustomContainerButton(
                  titel: examel.tag[index],
                  onPressed: () {
                    BlocProvider.of<TagCubit>(context).getdata(
                      endpoint: "posts",
                      token:
                          "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNjM3NDI0LCJleHAiOjE3MjIyNDIyMjQsIm5iZiI6MTcyMTYzNzQyNCwianRpIjoid2ZQU1o0eVZzZ0NGSFhVNiIsInN1YiI6IjEwNiIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.4dS3VEbXlOKfR1PCwnw0pNbXE9-P6SxdrwpVJlQUku8",
                      data: {"tag": examel.tag[index]},
                    );
                  },
                ),
              ),
            );
          }),
        ),
        const SizedBox(
          height: 8,
        ),
        Bodyofheader(
          examel: examel,
          screensize: MediaQuery.of(context).size.width * .5,
          contact: examel.contant.substring(0, 5),
        )
      ],
    );
  }
}
