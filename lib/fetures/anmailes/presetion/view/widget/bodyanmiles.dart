import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/fetechmyanmiles/fetach_my_anmiles_cubit.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/butom.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/iteam.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/myaccount.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/myaddacount.dart';

class BodyAnmiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FetachMyAnmilesCubit, FetachMyAnmilesState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is FetachMyAnmsucesss) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Expanded(
                    child: Anmmalesmeacc(
                  listAnmileEntity: state.lis,
                )),
                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => MyAccountAdd())),
                  child: buttomanmandmating(
                    color: Colors.orange,
                    text: 'إضافة حيوان جديد',
                    image: 'Asset/image/jjjdjd.png',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => MyAccountAdd()));
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                )
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
