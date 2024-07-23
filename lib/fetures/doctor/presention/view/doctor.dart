import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/doctor/data/repo/repoimp.dart';
import 'package:pett_peaces/fetures/doctor/domain/repo/doctorerepo.dart';
import 'package:pett_peaces/fetures/doctor/presention/manager/cubit/fetchdoctor_cubit.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/bodyDoctor.dart';

class Doctor extends StatefulWidget {
  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  Doctorerepo doctorerepo = DoctorrepImp();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchdoctorCubit(doctorerepo),
      child: Scaffold(
        backgroundColor: const Color(0xFFFDFDFD),
        body: BodyDocoter(),
      ),
    );
  }
}
