import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/coteching/presention/manager/featchallcotchig/fetachingallcout_cubit.dart';
import 'package:pett_peaces/fetures/doctor/presention/manager/cubit/fetchdoctor_cubit.dart';
import 'package:pett_peaces/fetures/store/prention/manager/featchallproduct/fectch_product_cubit.dart';

import 'package:pett_peaces/fetures/store/prention/view/widget/continertextfiled.dart';

class TitelappbarDoctore extends StatefulWidget {
  const TitelappbarDoctore({
    super.key,
    required this.name,
  });
  final String name;

  @override
  State<TitelappbarDoctore> createState() => _TitelappbarDoctoreState();
}

class _TitelappbarDoctoreState extends State<TitelappbarDoctore> {
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
        BlocProvider.of<FetchdoctorCubit>(context).searchProducts(
          endpoint: "users/doctors",
          token:
              "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNTQ2MjkxLCJleHAiOjE3MjIxNTEwOTEsIm5iZiI6MTcyMTU0NjI5MSwianRpIjoiNmp0MDdDcVVjUnZBNkVrQyIsInN1YiI6IjU4IiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.sbgX8KCFnG6Fr1XxtIOaQ8-2aERTiPVaomS23DD7P2g",
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
          child: continertextfiled(
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
