import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/function/builderrorbar.dart';
import 'package:pett_peaces/fetures/box/presention/manager/addtobox/add_box_cubit.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class IteamStore extends StatelessWidget {
  const IteamStore(
      {super.key,
      this.onTap,
      required this.producEntity,
      required this.userEntitymodel});
  final void Function()? onTap;
  final ProducEntity producEntity;
  final UserEntitymodel userEntitymodel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: FittedBox(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black12, width: 1),
            boxShadow: [
              const BoxShadow(
                color: Color(0x40000000), // Color #000000 with 25% opacity
                blurRadius: 8,
                spreadRadius: 2,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: bodyiteamstore(
            producEntity: producEntity,
            userEntitymodel: userEntitymodel,
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class bodyiteamstore extends StatelessWidget {
  const bodyiteamstore({
    super.key,
    required this.producEntity,
    required this.userEntitymodel,
  });
  final ProducEntity producEntity;
  final UserEntitymodel userEntitymodel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9.0),
      child: Column(
        children: [
          Text(
            producEntity.nameof,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Image.network(
            producEntity.img,
            height: MediaQuery.of(context).size.height *
                0.2, // Adjust the height as needed
            width: MediaQuery.of(context).size.width *
                0.5, // Adjust the width as needed
            fit: BoxFit.cover, // Ensures the image covers the specified space
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(5.0),
            width: MediaQuery.of(context).size.width * .55,
            decoration: BoxDecoration(
              color: const Color(0xffF78E32).withOpacity(.3),
              borderRadius: BorderRadius.circular(9),
            ),
            child: infoiteamstore(
              producEntity: producEntity,
              userEntitymodel: userEntitymodel,
            ),
          ),
        ],
      ),
    );
  }
}

class infoiteamstore extends StatelessWidget {
  final UserEntitymodel userEntitymodel;

  const infoiteamstore({
    super.key,
    required this.producEntity,
    required this.userEntitymodel,
  });
  final ProducEntity producEntity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${producEntity.prices}\$",
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Color(0xffF78E32),
                  fontSize: 18,
                ),
              ),
              const Text(
                "120",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 12,
                ),
              )
            ],
          ),
          BlocListener<AddBoxCubit, AddBoxState>(
            listener: (context, state) {
              if (state is AddBoxsucess) {
                buildErrorBar(context, state.boxEntity.massage);
              }
            },
            child: IconButton(
                onPressed: () {
                  log("message");
                  BlocProvider.of<AddBoxCubit>(context).addproduct(
                      data: {"product_id": producEntity.id},
                      endpoint: "cart/add",
                      token: userEntitymodel.token);
                },
                icon: Image.asset("Asset/image/add.png")),
          )
        ],
      ),
    );
  }
}
