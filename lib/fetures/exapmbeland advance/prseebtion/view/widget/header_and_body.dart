import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/entity/exambel_details_enity.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/manager/cubit/tag_cubit.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/manager/featch/exambelcubit_cubit.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/body.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/body_exapmbel.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/hatag.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/iteam_continer.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class HeaderAndBody extends StatefulWidget {
  const HeaderAndBody({
    super.key,
    required this.examel,
    required this.onPressed,
    required this.userEntity,
  });
  final ExambelEnitydetails examel;
  final UserEntity userEntity;
  final void Function() onPressed;
  @override
  State<HeaderAndBody> createState() => _HeaderAndBodyState();
}

class _HeaderAndBodyState extends State<HeaderAndBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: List.generate(widget.examel.tag.length, (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: BlocListener<TagCubit, TagState>(
                listener: (context, state) {
                  if (state is Tagsucess) {}
                },
                child: CustomContainerButton(
                  titel: widget.examel.tag[index],
                  onPressed: () {
                    context
                        .read<ExambelcubitCubit>()
                        .updateheadertitel(widget.examel.tag[index]);
                    OnParsed;
                    BlocProvider.of<ExambelcubitCubit>(context).gettag(
                      endpoint: "posts",
                      token: widget.userEntity.token,
                      data: {"tag": widget.examel.tag[index]},
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
          examel: widget.examel,
          screensize: MediaQuery.of(context).size.width * .5,
          contact: widget.examel.contant.substring(0, 5),
        )
      ],
    );
  }
}
