import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/manager/featchallproduct/fectch_product_cubit.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/continer_text_filed.dart';

class Titelappbar extends StatefulWidget {
  const Titelappbar({
    super.key,
    required this.name,
    required this.userEntitymodel,
  });
  final String name;
  final UserEntitymodel userEntitymodel;
  @override
  State<Titelappbar> createState() => _TitelappbarState();
}

class _TitelappbarState extends State<Titelappbar> {
  TextEditingController textEditingController = TextEditingController();
  Timer? debounce;

  @override
  void initState() {
    super.initState();
    fetchPredictions();
  }

  void fetchPredictions() {
    textEditingController.addListener(() {
      if (debounce?.isActive ?? false) {
        debounce?.cancel();
      }
      debounce = Timer(const Duration(milliseconds: 300), () {
        BlocProvider.of<FectchProductCubit>(context).searchProducts(
          endpoint: "products",
          token: widget.userEntitymodel.token,
          query: {"key_words": textEditingController.text},
        );
      });
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Continertextfiled(
            name: widget.name,
            textEditingController: textEditingController,
          ),
        ),
        IconButton(
          icon: Image.asset('Asset/image/filter.png'),
          onPressed: () {},
        ),
      ],
    );
  }
}
