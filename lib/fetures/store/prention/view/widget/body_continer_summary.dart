import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/list_view_store.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/buttom_seller.dart';

class BodyContiner extends StatelessWidget {
  const BodyContiner({
    super.key,
    required this.producEntity,
    required this.userEntitymodel,
  });
  final ProducEntity producEntity;
  final UserEntitymodel userEntitymodel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 36,
              ),
              Text(
                "الوصف",
                style: AppStyles.styleMedium18(context)
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 18,
              ),
              HtmlWidget(
                producEntity.volum,
              ),
              const SizedBox(
                height: 18,
              ),
              HtmlWidget(
                producEntity.detai,
              ),
            ],
          ),
        ),
        Suggetionproduct(
          producEntity: producEntity,
          userEntitymodel: userEntitymodel,
        ),
        SizedBox(
          height: 20,
        ),
        Buttomsell(
          o: producEntity.pro.length,
        ),
      ],
    );
  }
}

class Suggetionproduct extends StatelessWidget {
  final ProducEntity producEntity;
  final UserEntitymodel userEntitymodel;
  const Suggetionproduct(
      {super.key, required this.producEntity, required this.userEntitymodel});
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: producEntity.pro.length == 0 ? false : true,
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Text(
            "منتجات مقترحة",
            style: AppStyles.styleMedium18(context)
                .copyWith(fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * .26,
              child: gridviewstore(
                producEntity: producEntity.pro,
                userEntitymodel: userEntitymodel,
              )),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
