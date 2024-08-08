import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/store/domain/entity/department_entity.dart';
import 'package:pett_peaces/fetures/store/prention/manager/cubit/filter_cubit.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/header_buttom_sheet.dart';

class Custommodelshhet extends StatefulWidget {
  final List<DepartmentEntity> department;

  const Custommodelshhet({super.key, required this.department});

  @override
  State<Custommodelshhet> createState() => _CustommodelshhetState();
}

class _CustommodelshhetState extends State<Custommodelshhet> {
  String? _selectedDepartmentId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilterCubit(),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: Column(
            children: [
              const Headerbottomsheet(
                titel11: 'الفئه',
                titel2: 'الرجوع',
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: widget.department.length,
                  itemBuilder: (BuildContext context, int index) {
                    final department = widget.department[index];
                    return ListTile(
                      title: Text(department.namee),
                      leading: Checkbox(
                        activeColor: Colors.orange,
                        value:
                            _selectedDepartmentId == department.idd.toString(),
                        onChanged: (bool? value) {
                          setState(() {
                            if (value == true) {
                              _selectedDepartmentId = department.idd.toString();
                            } else {
                              _selectedDepartmentId = null;
                            }
                            log(_selectedDepartmentId.toString());
                            BlocProvider.of<FilterCubit>(context)
                                .saveDepartmentName(
                              department.namee,
                              _selectedDepartmentId ?? '',
                            );
                          });
                        },
                      ),
                      onTap: () {
                        setState(() {
                          if (_selectedDepartmentId ==
                              department.idd.toString()) {
                            _selectedDepartmentId = null;
                          } else {
                            _selectedDepartmentId = department.idd.toString();
                          }
                          log(_selectedDepartmentId.toString());
                          BlocProvider.of<FilterCubit>(context)
                              .saveDepartmentName(
                            department.namee,
                            _selectedDepartmentId ?? '',
                          );
                        });
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
