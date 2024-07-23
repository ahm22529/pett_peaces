import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/doctor/presention/manager/cubit/fetchdoctor_cubit.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/customgraidviewdoctor.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/titelappbar.dart';

class BodyDocoter extends StatefulWidget {
  @override
  State<BodyDocoter> createState() => _BodyDocoterState();
}

class _BodyDocoterState extends State<BodyDocoter> {
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  int currentPage = 1;
  bool isLoadingMore = false;
  List products = [];
  void _loadData() {
    BlocProvider.of<FetchdoctorCubit>(context).getdata(
      endpoint: "users/doctors",
      token:
          "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNjMyMzQ5LCJleHAiOjE3MjIyMzcxNDksIm5iZiI6MTcyMTYzMjM0OSwianRpIjoiSm1pUkFMZlFFbmtaUEhXVyIsInN1YiI6Ijk2IiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.uyrEk0t3CkOp2HKgtqTCRmS7h0MiXDPp8j6SkZPPF2Y",
    );
  }

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return BlocBuilder<FetchdoctorCubit, FetchdoctorState>(
      builder: (context, state) {
        if (state is Fetchdoctorsucess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 73),
            child: Column(
              children: [
                const customAppbar(name: "الاطباء"),
                const SizedBox(height: 24),
                const TitelappbarDoctore(name: 'ابحث عن الأطباء '),
                const SizedBox(height: 15),
                Expanded(
                    child: CustomGridViewDoctor(
                  doctorEntity: state.doctorEntity,
                  scrollController: scrollController,
                )),
              ],
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(color: Colors.orange),
          );
        }
      },
    );
  }
}
