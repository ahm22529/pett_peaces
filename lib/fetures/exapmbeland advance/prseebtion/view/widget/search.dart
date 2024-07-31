import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/manager/featch/exambelcubit_cubit.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';


import 'package:pett_peaces/fetures/store/prention/view/widget/continer_text_filed.dart';

class TitelappbarExam extends StatefulWidget {
  const TitelappbarExam({
    super.key,
    required this.name,
    required this.userEntitymodel,
  });
  final String name;
  final UserEntitymodel userEntitymodel;
  @override
  State<TitelappbarExam> createState() => _TitelappbarDoctoreState();
}

class _TitelappbarDoctoreState extends State<TitelappbarExam> {
  TextEditingController textEditingController = TextEditingController();
  Timer? debounce;

  @override
  void initState() {
    super.initState();
    fetchPredictions();
  }

  void fetchPredictions() {
    textEditingController.addListener(() {
      if (debounce?.isActive ?? false) {
        debounce?.cancel();
      }
      debounce = Timer(const Duration(milliseconds: 300), () {
        BlocProvider.of<ExambelcubitCubit>(context).searchProducts(
          endpoint: "posts",
          token: widget.userEntitymodel.token,
          query: {"search": textEditingController.text},
        );
      });
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Continertextfiled(
            name: widget.name,
            textEditingController: textEditingController,
          ),
        ),
        IconButton(
          icon: Image.asset('Asset/image/filter.png'),
          onPressed: () {},
        ),
      ],
    );
  }
}
