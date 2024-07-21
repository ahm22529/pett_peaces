import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/coteching/presention/manager/featchallcotchig/fetachingallcout_cubit.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/gridviewdoctor.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/titelappbar.dart';

class BodyCoating extends StatefulWidget {
  @override
  State<BodyCoating> createState() => _BodyCoatingState();
}

class _BodyCoatingState extends State<BodyCoating> {
  final ScrollController _scrollController = ScrollController();
  int currentPage = 1;
  bool isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    _loadData();
    _scrollController.addListener(_onScroll);
  }

  void _loadData() {
    context.read<FetachingallcoutCubit>().getdata(
        endpoint: "users/trainers?page=$currentPage",
        token:
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNTQ2MjkxLCJleHAiOjE3MjIxNTEwOTEsIm5iZiI6MTcyMTU0NjI5MSwianRpIjoiNmp0MDdDcVVjUnZBNkVrQyIsInN1YiI6IjU4IiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.sbgX8KCFnG6Fr1XxtIOaQ8-2aERTiPVaomS23DD7P2g");
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
    return BlocConsumer<FetachingallcoutCubit, FetachingallcoutState>(
      listener: (context, state) {
        if (state is Fetachingallcoutsucess) {
          setState(() {
            isLoadingMore = false;
          });
        }
      },
      builder: (context, state) {
        if (state is Fetachingallcoutsucess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .07,
                ),
                const customAppbar(
                  name: 'المدربين',
                ),
                const SizedBox(
                  height: 24,
                ),
                const TitelappbarDoctore(
                  name: 'ابحث عن المدربين ',
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: gridviewdoctopr(
                    coatchEntiityFrist: state.coatchEntiityFrist,
                    scrollController: _scrollController,
                  ),
                ),
                if (isLoadingMore)
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: CircularProgressIndicator(),
                  ),
              ],
            ),
          );
        } else {
          return Center(child: const CircularProgressIndicator());
        }
      },
    );
  }
}
