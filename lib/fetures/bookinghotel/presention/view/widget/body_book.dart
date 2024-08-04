import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/custom_widget_fauiler.dart';
import 'package:pett_peaces/core/utiles/widget/load_widget.dart';

import 'package:pett_peaces/fetures/bookinghotel/presention/manager/cubit/pending_cubit.dart';
import 'package:pett_peaces/fetures/bookinghotel/presention/view/widget/header.dart';

import 'package:pett_peaces/fetures/bookinghotel/presention/view/widget/iteam_border.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class BodyBook extends StatefulWidget {
  final UserEntity userEntitymodelb;
  const BodyBook({
    super.key,
    required this.userEntitymodelb,
  });

  @override
  State<BodyBook> createState() => _BodyBookState();
}

class _BodyBookState extends State<BodyBook> {
  int selectedTabIndex = 0;
  @override
  void initState() {
    super.initState();
    BlocProvider.of<PendingCubit>(context).getdata(
        endpoint: "hotel/reservations/my-reservations/pending",
        token: widget.userEntitymodelb.token);
  }

  void _handleTabChange(int index) {
    setState(() {
      selectedTabIndex = index;
    });
    if (index == 1) {
      // Load or display the empty list
      BlocProvider.of<PendingCubit>(context).getdata(
          endpoint: "hotel/reservations/my-reservations/active",
          token: widget.userEntitymodelb.token);
    } else if (selectedTabIndex == 0) {
      BlocProvider.of<PendingCubit>(context).getdata(
          endpoint: "hotel/reservations/my-reservations/pending",
          token: widget.userEntitymodelb.token);
    } else {
      BlocProvider.of<PendingCubit>(context).getdata(
          endpoint: "hotel/reservations/my-reservations/expired",
          token: widget.userEntitymodelb.token);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          HeaderBooktingHo(onTabChanged: _handleTabChange),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            height: 20,
          ),
          BlocConsumer<PendingCubit, PendingState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is Pendingsucess) {
                return Expanded(
                    child: ListView.builder(
                        itemCount: state.llistBookingEntity.book.length,
                        itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: Iteamorder(
                                bookingEneity:
                                    state.llistBookingEntity.book[index],
                              ),
                            )));
              } else if (state is Pendingfauiler) {
                return const CustomWidgetfauier();
              } else {
                return const Loadwidgwt();
              }
            },
          )
        ],
      ),
    );
  }
}
