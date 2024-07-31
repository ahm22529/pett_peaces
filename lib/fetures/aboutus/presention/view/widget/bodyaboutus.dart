import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custom_widget_fauiler.dart';
import 'package:pett_peaces/core/utiles/widget/load_widget.dart';
import 'package:pett_peaces/fetures/aboutus/data/model/informationcontantinfo.dart';
import 'package:pett_peaces/fetures/aboutus/presention/view/widget/informationcontact.dart';
import 'package:pett_peaces/fetures/aboutus/presention/view/widget/socialiconrow.dart';
import 'package:pett_peaces/fetures/poilce/presention/manger/cubit/policy_cubit.dart';

class Bodyaboutus extends StatefulWidget {
  @override
  State<Bodyaboutus> createState() => _BodyaboutusState();
}

class _BodyaboutusState extends State<Bodyaboutus> {
  List<InformationContactInfo> lis = [
    InformationContactInfo(
        img: 'Asset/image/location.png', title: 'Street: Box No. 81747'),
    InformationContactInfo(
        img: 'Asset/image/location.png', title: 'Street: Box No. 81747'),
    InformationContactInfo(
        img: 'Asset/image/location.png', title: 'Street: Box No. 81747')
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<PolicyCubit>(context).getAboutus(
        endpoint: "data/about/about_us",
        token:
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNjY2MTU5LCJleHAiOjE3MjIyNzA5NTksIm5iZiI6MTcyMTY2NjE1OSwianRpIjoiZUJodjZtQ2dFV2UyY0xnUSIsInN1YiI6IjEwOSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.99iC7a6BaYfnVCcCvll3dLteePiKdN3_de0zeO4vATA");
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PolicyCubit, PolicyState>(
      builder: (context, state) {
        if (state is PolicyIsuicessAboutus) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Text(
                  state.policyentity.polic,
                  style: AppStyles.styleMedium16(context),
                ),
                const SizedBox(height: 36),
                informationcontactff(lis: lis),
                const SizedBox(
                  height: 38,
                ),
                SocialIconsRow(),
              ],
            ),
          );
        } else if (state is Policyfauiler) {
          return const Center(child: CustomWidgetfauier());
        } else {
          return const Loadwidgwt();
        }
      },
    );
  }
}
