import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/repo/repo.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/manager/cubit/tag_cubit.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/manager/featch/exambelcubit_cubit.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/bodyexapmbel.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/continer_text_filed.dart';

class Example extends StatefulWidget {
  final UserEntitymodel userEntitymodel;

  const Example({super.key, required this.userEntitymodel});
  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  Exambelrepo exam = Exambelrepimp();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ExambelcubitCubit(exam),
          ),
          BlocProvider(
            create: (context) => TagCubit(exam),
          )
        ],
        child: Scaffold(
            body: BodyExample(
          userEntitymodel: widget.userEntitymodel,
        )));
  }
}
