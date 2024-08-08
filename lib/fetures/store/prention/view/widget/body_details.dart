import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/manager/fetachproductdetailk/fetech_product_details_cubit.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/customcard.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/header_detailes.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/summary.dart';

class BodyDetails extends StatefulWidget {
  const BodyDetails({
    super.key,
    required this.userEntitymodel,
    required this.producEntity,
  });

  final UserEntity userEntitymodel;
  final ProducEntity producEntity;

  @override
  State<BodyDetails> createState() => _BodyDetailsState();
}

class _BodyDetailsState extends State<BodyDetails> {
  @override
  void initState() {
    BlocProvider.of<FetechProductDetailsCubit>(context).getdata(
        endpoint: "products/",
        token: widget.userEntitymodel.token,
        id: widget.producEntity.id.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetechProductDetailsCubit, FetechProductDetailsState>(
      builder: (context, state) {
        if (state is FetechProductDetailssucess) {
          return LayoutBuilder(
            builder: (context, constraints) {
              final height = constraints.maxHeight;
              final width = constraints.maxWidth;

              return SingleChildScrollView(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          child: Headerdetailes(
                            producEntity: state.producEntity.product,
                          ),
                        ),
                        Summary(
                          producEntity: state.producEntity.product,
                          userEntitymodel: widget.userEntitymodel,
                          pro: state.producEntity.suggtion,
                        ),
                      ],
                    ),
                    Positioned(
                      top: state.producEntity.suggtion.length <= 2
                          ? height * .37
                          : height * .39,
                      right: 5,
                      child: Image.asset("Asset/image/pawprint 8.png"),
                    ),
                    Positioned(
                      right: 20,
                      top: state.producEntity.product.oherimage.length <= 2
                          ? height * .42
                          : height * .46,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: CustomCard(
                          producEntity: state.producEntity.product,
                          userEntitymodel: widget.userEntitymodel,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.orange,
            ),
          );
        }
      },
    );
  }
}
