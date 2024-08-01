import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/load_widget.dart';
import 'package:pett_peaces/fetures/masssege/presention/manager/cubit/massage_cubit.dart';
import 'package:pett_peaces/fetures/masssege/presention/view/widget/body_masssage.dart';
import 'package:pett_peaces/fetures/masssege/presention/view/widget/chat_list.dart';

class ListviewFrined extends StatefulWidget {
  const ListviewFrined({super.key, required this.widget});
  final BodyMassege widget;

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
        endpoint: "chat/list?page=$currentPage",
        token:
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIyNDk0MTA0LCJleHAiOjE3MjMwOTg5MDQsIm5iZiI6MTcyMjQ5NDEwNCwianRpIjoiVmRHVFJPMWs1VVBvaXdLUiIsInN1YiI6IjEyNSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.1zfERtwmUMRWJ8YePF9W6RCFDhb89X9CKva4SqaGVUU");
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
          );
        } else {
          return Loadwidgwt();
        }
      },
    );
  }
}
