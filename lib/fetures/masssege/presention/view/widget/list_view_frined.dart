import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/load_widget.dart';
import 'package:pett_peaces/fetures/masssege/presention/manager/cubit/massage_cubit.dart';
import 'package:pett_peaces/fetures/masssege/presention/view/widget/body_masssage.dart';
import 'package:pett_peaces/fetures/masssege/presention/view/widget/chat_list.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class ListviewFrined extends StatefulWidget {
  const ListviewFrined(
      {super.key,
      required this.widget,
      required this.token,
      required this.userEntity});
  final BodyMassege widget;
  final String token;
  final UserEntity userEntity;
  @override
  State<ListviewFrined> createState() => _ListviewFrinedState();
}

class _ListviewFrinedState extends State<ListviewFrined> {
  final ScrollController _scrollController = ScrollController();
  int currentPage = 1;
  bool isLoadingMore = false;
  List chats = [];

  @override
  void initState() {
    super.initState();
    _loadData();
    _scrollController.addListener(_onScroll);
  }

  void _loadData() {
    context.read<MassageCubit>().getalluser(
        endpoint: "chat/list?page=$currentPage", token: widget.token);
  }

  void _onScroll() {
    if (_scrollController.position.atEdge &&
        _scrollController.position.pixels != 0 &&
        !isLoadingMore) {
      setState(() {
        isLoadingMore = true;
        currentPage++;
      });
      _loadData();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MassageCubit, MassageState>(
      listener: (context, state) {
        if (state is MassageSucess) {
          setState(() {
            isLoadingMore = false;
            chats.addAll(state.allChat.chat);
          });
        }
      },
      builder: (context, state) {
        if (state is MassageSucess || isLoadingMore) {
          return ChatList(
            scrollController: _scrollController,
            chats: chats,
            isLoadingMore: isLoadingMore,
            onItemSelected: widget.widget.onItemSelected,
            token: widget.token,
            userEntity: widget.userEntity,
          );
        } else {
          return Loadwidgwt();
        }
      },
    );
  }
}
