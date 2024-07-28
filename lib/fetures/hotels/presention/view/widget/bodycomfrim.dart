import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/manager/fetechmyanmiles/fetach_my_anmiles_cubit.dart';
import 'package:pett_peaces/fetures/hotels/domain/entity/aboutus_entity.dart';
import 'package:pett_peaces/fetures/hotels/presention/manager/cubit/book_cubit.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/buttomcomfrim.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/checkchoose.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/dateofbook.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/datepicker.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/droptextfiled.dart';
import 'package:pett_peaces/fetures/contactus/prsention/view/widget/textfiledreson.dart';

class Bodycomfrimbook extends StatefulWidget {
  const Bodycomfrimbook({super.key, required this.hotelEntity});

  final HotelEntity hotelEntity;

  @override
  State<Bodycomfrimbook> createState() => _BodycomfrimbookState();
}

class _BodycomfrimbookState extends State<Bodycomfrimbook> {
  Animal? selectedAnimal;
  final TextEditingController animalController = TextEditingController();
  final TextEditingController startDateController = TextEditingController();
  final TextEditingController endDateController = TextEditingController();
  final TextEditingController daysController = TextEditingController();
  String startdate = '', enddate = '', vule = '';
  List<int> selectedServiceIds = [];
  bool showDaysField = false;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<FetachMyAnmilesCubit>(context).getanmiles(
        token:
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNjY2MTU5LCJleHAiOjE3MjIyNzA5NTksIm5iZiI6MTcyMTY2NjE1OSwianRpIjoiZUJodjZtQ2dFV2UyY0xnUSIsInN1YiI6IjEwOSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.99iC7a6BaYfnVCcCvll3dLteePiKdN3_de0zeO4vATA",
        endpoint: "animals/");
  }

  void selectService(int serviceId) {
    setState(() {
      selectedServiceIds.add(serviceId);
      if (serviceId == 5) showDaysField = true;
    });
  }

  void removeService(int serviceId) {
    setState(() {
      selectedServiceIds.remove(serviceId);
      if (serviceId == 5) {
        showDaysField = false;
        daysController.clear();
      }
    });
  }

  void onConfirmPressed() {
    if (startdate.isEmpty ||
        enddate.isEmpty ||
        selectedAnimal == null ||
        selectedServiceIds.isEmpty ||
        (selectedServiceIds.contains(5) && vule.isEmpty)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('يرجى إدخال كافة المعلومات المطلوبة'),
        ),
      );
      return;
    }
  }

  Future<void> selectDate(BuildContext context,
      TextEditingController controller, bool isStartDate) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      setState(() {
        String formattedDate = pickedDate.toLocal().toString().split(' ')[0];
        controller.text = formattedDate;
        if (isStartDate)
          startdate = formattedDate;
        else
          enddate = formattedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView(
        children: [
          const SizedBox(height: 73),
          const customAppbar(name: 'تاكيد الحجز'),
          const SizedBox(height: 32),
          dateofbook(
            textEditingController1: startDateController,
            textEditingController2: endDateController,
            onTap1: () => selectDate(context, startDateController, true),
            onTap2: () => selectDate(context, endDateController, false),
          ),
          const SizedBox(height: 16),
          BlocBuilder<FetachMyAnmilesCubit, FetachMyAnmilesState>(
            builder: (context, state) {
              if (state is FetachMyAnmsucesss) {
                return datepic(
                  widget: DropdownFieldbook(
                    options: state.lis.anmiles
                        .map((e) => Animal(id: e.idd, name: e.namee))
                        .toList(),
                    controller: animalController,
                    onSelected: (Animal? value) {
                      selectedAnimal = value;
                    },
                  ),
                  text: "اختر الحيوان",
                );
              } else {
                return const SizedBox(height: 20);
              }
            },
          ),
          const SizedBox(height: 16),
          Text(
            "الخدمات",
            style: AppStyles.styleMedium16(context).copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.hotelEntity.ser[0].ser.length,
            itemBuilder: (context, index) {
              var service = widget.hotelEntity.ser[0].ser[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 0.0),
                child: checkchoose(
                  titel: service.servacename,
                  titel2: service.pric,
                  serviceId: service.idd,
                  onSelected: selectService,
                  onremove: removeService,
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          if (showDaysField)
            datepic(
              widget: Textformfieldresoncon(
                maxline: 1,
                initialValue: '',
                onChanged: (String s) {
                  setState(() {
                    vule = s;
                  });
                },
              ),
              text: "عدد أيام التزاوج",
            ),
          const SizedBox(height: 20),
          Container(
            color: Colors.white,
            child: butomcomfrim(onPressed: onConfirmPressed),
          ),
          BlocListener<BookCubit, BookState>(
            listener: (context, state) {
              if (state is Bookfailuere) {
                print(state.errmas);
              }
            },
            child: const SizedBox(height: 20),
          ),
        ],
      ),
    );
  }
}
