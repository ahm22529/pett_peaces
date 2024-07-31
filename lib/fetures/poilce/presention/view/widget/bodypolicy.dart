import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custom_widget_fauiler.dart';
import 'package:pett_peaces/core/utiles/widget/load_widget.dart';
import 'package:pett_peaces/fetures/poilce/presention/manger/cubit/policy_cubit.dart';

class BodyPolicy extends StatefulWidget {
  @override
  State<BodyPolicy> createState() => _BodyPolicyState();
}

class _BodyPolicyState extends State<BodyPolicy> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<PolicyCubit>(context).getpolicy(
        endpoint: "data/about/policy",
        token:
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNjY2MTU5LCJleHAiOjE3MjIyNzA5NTksIm5iZiI6MTcyMTY2NjE1OSwianRpIjoiZUJodjZtQ2dFV2UyY0xnUSIsInN1YiI6IjEwOSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.99iC7a6BaYfnVCcCvll3dLteePiKdN3_de0zeO4vATA");
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PolicyCubit, PolicyState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is PolicyIsuicess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
            child: Text(
              state.policyentity.polic,
              style: AppStyles.styleMedium16(context),
            ),
          );
        } else if (state is Policyfauiler) {
          return CustomWidgetfauier();
        } else {
          return Loadwidgwt();
        }
      },
    );
  }
}
