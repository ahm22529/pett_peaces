import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/load_widget.dart';
import 'package:pett_peaces/fetures/order2/presention/manager/cubit/order_cubit.dart';
import 'package:pett_peaces/fetures/order2/presention/view/widget/header.dart';
import 'package:pett_peaces/fetures/order2/presention/view/widget/iteam_bookting.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class BodyBookting extends StatefulWidget {
  final UserEntity userEntitymodel;

  const BodyBookting({super.key, required this.userEntitymodel});

  @override
  State<BodyBookting> createState() => _BodyBooktingState();
}

class _BodyBooktingState extends State<BodyBookting> {
  int selectedTabIndex = 0;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<OrderCubit>(context).getdata(
        endpoint: "my-orders/checkout",
        token:
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIyMzQ2NTg1LCJleHAiOjE3MjI5NTEzODUsIm5iZiI6MTcyMjM0NjU4NSwianRpIjoicHJwQlZIbngzYWNSeGVHZyIsInN1YiI6IjEyMiIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.lYnKBGmPOSiuH3gnIYbMJ6fFgNKRjL7-lJ9J04B6xMk");
  }

  void _handleTabChange(int index) {
    setState(() {
      selectedTabIndex = index;
    });
    if (index == 1) {
      // Load or display the empty list
      BlocProvider.of<OrderCubit>(context).getdata(
          endpoint: "my-orders/delivered",
          token:
              "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIyMzQ2NTg1LCJleHAiOjE3MjI5NTEzODUsIm5iZiI6MTcyMjM0NjU4NSwianRpIjoicHJwQlZIbngzYWNSeGVHZyIsInN1YiI6IjEyMiIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.lYnKBGmPOSiuH3gnIYbMJ6fFgNKRjL7-lJ9J04B6xMk");
    } else {
      BlocProvider.of<OrderCubit>(context).getdata(
          endpoint: "my-orders/checkout",
          token:
              "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIyMzQ2NTg1LCJleHAiOjE3MjI5NTEzODUsIm5iZiI6MTcyMjM0NjU4NSwianRpIjoicHJwQlZIbngzYWNSeGVHZyIsInN1YiI6IjEyMiIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.lYnKBGmPOSiuH3gnIYbMJ6fFgNKRjL7-lJ9J04B6xMk");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(height: 20),
          HeaderBookting(onTabChanged: _handleTabChange),
          const SizedBox(height: 20),
          BlocConsumer<OrderCubit, OrderState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is Ordersucess) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: state.listOrderEntity.order.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: ItemBooktin(
                        userEntitymodel: widget.userEntitymodel,
                        orderEntity: state.listOrderEntity.order[index],
                      ),
                    ),
                  ),
                );
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
