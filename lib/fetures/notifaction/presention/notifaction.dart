import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/notifaction/data/repo/notifaction_repo_imp.dart';
import 'package:pett_peaces/fetures/notifaction/domain/repo/notifaction_repo.dart';
import 'package:pett_peaces/fetures/notifaction/presention/maager/cubit/getnotifaction_cubit.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Notifactin extends StatefulWidget {
  const Notifactin({super.key, required this.userEntitymodel});
  final UserEntity userEntitymodel;
  @override
  State<Notifactin> createState() => _NotifactinState();
}

class _NotifactinState extends State<Notifactin> {
  final NotifactionRepo notifactionRepo = NotifactionRepoImp();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetnotifactionCubit(notifactionRepo: notifactionRepo),
      child: Scaffold(
        body: BodyNotifaction(
          userEntitymodel: widget.userEntitymodel,
        ),
      ),
    );
  }
}

class BodyNotifaction extends StatefulWidget {
  final UserEntity userEntitymodel;

  const BodyNotifaction({super.key, required this.userEntitymodel});
  @override
  State<BodyNotifaction> createState() => _BodyNotifactionState();
}

class _BodyNotifactionState extends State<BodyNotifaction> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<GetnotifactionCubit>(context).getNotifaction(
        endpoint: "notifications", token: widget.userEntitymodel.token);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          customAppbar(name: "الاشعارات"),
          Expanded(child: BlocBuilder<GetnotifactionCubit, GetnotifactionState>(
            builder: (context, state) {
              if (state is GetnotifactionSucess) {
                return ListView.builder(
                    itemCount: state.allnotifaction.notifaction.length,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(bottom: 2.0),
                          child: iteamnotif(
                            image:
                                state.allnotifaction.notifaction[index].icone,
                            titel: state.allnotifaction.notifaction[index].mass,
                          ),
                        ));
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          )),
        ],
      ),
    );
  }
}

class iteamnotif extends StatelessWidget {
  const iteamnotif({
    super.key,
    required this.image,
    required this.titel,
  });
  final String image, titel;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffE6E6E6),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: ListTile(
          leading: Image.network(image),
          trailing: Text(
            "اليوم",
            style: AppStyles.styleRegular14(context),
          ),
          title: Text(
            "تم حجز الفندق بنجاح",
            style: AppStyles.styleMedium16(context)
                .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
          ),
          subtitle: Text(
            titel,
            style: AppStyles.styleMedium12(context),
            maxLines: 2,
          ),
        ),
      ),
    );
  }
}
