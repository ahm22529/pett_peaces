import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/custom_widget_fauiler.dart';
import 'package:pett_peaces/core/utiles/widget/load_widget.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/fetechmyanmiles/fetach_my_anmiles_cubit.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/butom.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/iteam.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/myaddacount.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class BodyAnmiles extends StatelessWidget {
  final UserEntity userEntitymodel;

  const BodyAnmiles({super.key, required this.userEntitymodel});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FetachMyAnmilesCubit, FetachMyAnmilesState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is FetachMyAnmsucesss) {
          if (state.lis.anmiles.isEmpty) {
            return Column(
              children: [
                Image.asset("Asset/image/Dog and cat lying on a pillow.png"),
                const SizedBox(
                  height: 20,
                ),
                const Text("لا يوجد حيوانات يرجي اضافه حيوانتك")
              ],
            );
          }
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Expanded(
                    child: Anmmalesmeacc(
                  listAnmileEntity: state.lis,
                  userEntitymodel: userEntitymodel,
                )),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => MyAccountAdd(
                                userEntitymodel: userEntitymodel,
                              ))),
                  child: Buttomanmandmating(
                    color: Colors.orange,
                    text: 'إضافة حيوان جديد',
                    image: 'Asset/image/jjjdjd.png',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => MyAccountAdd(
                                    userEntitymodel: userEntitymodel,
                                  )));
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          );
        } else if (state is FetachMyAnmilesfauiler) {
          return const CustomWidgetfauier();
        } else {
          return const Loadwidgwt();
        }
      },
    );
  }
}
