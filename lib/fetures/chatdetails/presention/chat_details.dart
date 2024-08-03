import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/chatdetails/data/repo/massage_details_repo_imp.dart';
import 'package:pett_peaces/fetures/chatdetails/domain/repo/massage_details_repo.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/manager/cubit/send_cubit.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/manager/fetachalllchatcubit/chatdetails_cubit.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/view/widget/chat_info.dart';

class Chatdetails extends StatefulWidget {
  const Chatdetails(
      {super.key,
      required this.Userid,
      required this.name,
      required this.image});
  final int Userid;
  final String name, image;

  @override
  State<Chatdetails> createState() => _ChatdetailsState();
}

class _ChatdetailsState extends State<Chatdetails> {
  MassageDetailsRepo mass = MassageDetailsRepooImp();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ChatdetailsCubit(mass: mass),
        ),
        BlocProvider(
          create: (context) => SendCubit(mass: mass),
        )
      ],
      child: Scaffold(
        body: BodyChatdetails(
          Userid: widget.Userid,
          name: widget.name,
          image: widget.image,
        ),
      ),
    );
  }
}

class BodyChatdetails extends StatefulWidget {
  final int Userid;
  final String name, image;
  const BodyChatdetails(
      {super.key,
      required this.Userid,
      required this.name,
      required this.image});
  @override
  State<BodyChatdetails> createState() => _BodyChatdetailsState();
}

class _BodyChatdetailsState extends State<BodyChatdetails> {
  @override
  @override
  Widget build(BuildContext context) {
    return ChatPage(
      name: widget.image,
      imag: widget.name,
      id: widget.Userid,
    );
  }
}
