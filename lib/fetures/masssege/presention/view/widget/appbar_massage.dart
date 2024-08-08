import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/masssege/presention/manager/cubit/massage_cubit.dart';
import 'package:pett_peaces/fetures/masssege/presention/view/widget/text_filed_search_shape.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/continer_text_filed.dart';

class SearchUser extends StatefulWidget {
  const SearchUser({
    super.key,
    required this.name,
    required this.userEntitymodel,
  });
  final String name;
  final UserEntity userEntitymodel;
  @override
  State<SearchUser> createState() => _SearchUserState();
}

class _SearchUserState extends State<SearchUser> {
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
        BlocProvider.of<MassageCubit>(context).searchAboutuser(
          endpoint: "chat/list?search=",
          token: widget.userEntitymodel.token,
          qury: textEditingController.text,
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
          child: MassageSearchShape(
            name: widget.name,
            textEditingController: textEditingController,
          ),
        ),
      ],
    );
  }
}
