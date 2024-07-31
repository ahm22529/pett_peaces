import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/iteam_store.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/detailes.dart';

class IteamOrder extends StatelessWidget {
  final products;
  final UserEntitymodel userEntitymodel;

  const IteamOrder({super.key, this.products, required this.userEntitymodel});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.width <= 600
            ? .85
            : MediaQuery.of(context).size.width >= 400
                ? 2.1
                : 2.5,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => DetailesView(
                        userEntitymode: userEntitymodel,
                        producEntity: products[index],
                      )),
            );
          },
          child: IteamStore(
            onTap: () {},
            producEntity: products[index],
            userEntitymodel: userEntitymodel,
          ),
        );
      },
    );
  }
}
