import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/butom.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/iteam_listview.dart';
import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';
import 'package:pett_peaces/fetures/mating/prsention/manager/Add_remove/add_or_remove_cubit.dart';
import 'package:pett_peaces/fetures/mating/prsention/manager/getmating/get_mating_cubit.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class BodyMating extends StatefulWidget {
  const BodyMating({super.key, required this.userEntitymodel});
  final UserEntity userEntitymodel;

  @override
  State<BodyMating> createState() => _BodyMatingState();
}

class _BodyMatingState extends State<BodyMating> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetMatingCubit>(context).getMating(
        endpoint: "animal-mating/my-animals",
        token: widget.userEntitymodel.token);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetMatingCubit, GetMatingState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is GetMatingsucess) {
          return ListView.builder(
              itemCount: state.matingEntity.anmil.length,
              itemBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4),
                  child: Iteamlistviewami(
                    widget: BlocListener<AddOrRemoveCubit, AddOrRemoveState>(
                      listener: (context, state) {
                        if (state is AddOrRemovesucess) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(state.errmas)));
                        }
                      },
                      child: Buttomanmandmating(
                        text: "الغاء العرض",
                        image: "Asset/image/remove-circle.png",
                        color: Colors.red,
                        onTap: () {
                          BlocProvider.of<AddOrRemoveCubit>(context).getMating(
                              endpoint: "animal-mating/add-or-remove/50",
                              token:
                                  "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNjY2MTU5LCJleHAiOjE3MjIyNzA5NTksIm5iZiI6MTcyMTY2NjE1OSwianRpIjoiZUJodjZtQ2dFV2UyY0xnUSIsInN1YiI6IjEwOSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.99iC7a6BaYfnVCcCvll3dLteePiKdN3_de0zeO4vATA");
                        },
                      ),
                    ),
                    animel: AnmilesEntity(
                        agee: state.matingEntity.anmil[index].agee,
                        namee: state.matingEntity.anmil[index].namee,
                        otherimage: state.matingEntity.anmil[index].otherimage,
                        typee: state.matingEntity.anmil[index].typee,
                        des: state.matingEntity.anmil[index].des,
                        gendere: state.matingEntity.anmil[index].gendere,
                        imagee: state.matingEntity.anmil[index].imagee,
                        idd: state.matingEntity.anmil[index].idd,
                        predec: state.matingEntity.anmil[index].predec),
                  )));
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
