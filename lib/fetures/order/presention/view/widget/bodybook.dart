import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/hotels/presention/manager/cubit/book_cubit.dart';
import 'package:pett_peaces/fetures/order/presention/manager/cubit/pending_cubit.dart';
import 'package:pett_peaces/fetures/order/presention/view/widget/header.dart';
import 'package:pett_peaces/fetures/order/presention/view/widget/iteamborder.dart';

class bodybook extends StatefulWidget {
  const bodybook({
    super.key,
  });

  @override
  State<bodybook> createState() => _bodybookState();
}

class _bodybookState extends State<bodybook> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<PendingCubit>(context).getdata(
        endpoint: "hotel/reservations/my-reservations/pending",
        token:
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNjY2MTU5LCJleHAiOjE3MjIyNzA5NTksIm5iZiI6MTcyMTY2NjE1OSwianRpIjoiZUJodjZtQ2dFV2UyY0xnUSIsInN1YiI6IjEwOSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.99iC7a6BaYfnVCcCvll3dLteePiKdN3_de0zeO4vATA");
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PendingCubit, PendingState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is Pendingsucess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                BodyOrder(),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: state.llistBookingEntity.book.length,
                        itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: iteamorder(
                                bookingEneity:
                                    state.llistBookingEntity.book[index],
                              ),
                            )))
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
