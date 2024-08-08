import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/store/data/repo/repo_imp.dart';
import 'package:pett_peaces/fetures/store/domain/entity/department_entity.dart';
import 'package:pett_peaces/fetures/store/domain/repo.dart';
import 'package:pett_peaces/fetures/store/prention/manager/cubit/filter_cubit.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/header_buttom_sheet.dart';

class SubDepartmentSheet extends StatefulWidget {
  final List<DepartmentEntity> department;

  const SubDepartmentSheet({super.key, required this.department});

  @override
  State<SubDepartmentSheet> createState() => _SubDepartmentSheetState();
}

class _SubDepartmentSheetState extends State<SubDepartmentSheet> {
  List<String> _selectedDepartmentIds = [];
  List<String> _selectedDepartmentNames = [];
  StoreRepo storeRepo = StoreRepoImp();

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
                titel11: 'التصنيف الفرعي',
                titel2: 'الكل',
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: widget.department.length,
                  itemBuilder: (BuildContext context, int index) {
                    final department = widget.department[index].subdet[index];
                    return ListTile(
                      title: Text(department.namee),
                      leading: Checkbox(
                        value: _selectedDepartmentIds
                            .contains(department.idd.toString()),
                        onChanged: (bool? value) {
                          setState(() {
                            if (value == true) {
                              _selectedDepartmentIds
                                  .add(department.idd.toString());
                              
                              if (!_selectedDepartmentNames
                                  .contains(department.namee)) {
                                _selectedDepartmentNames.add(department.namee);
                              }
                            } else {
                              _selectedDepartmentIds
                                  .remove(department.idd.toString());
                              _selectedDepartmentNames.remove(department.namee);
                            }
                            log(_selectedDepartmentIds.toString());
                            BlocProvider.of<FilterCubit>(context)
                                .saveSubdepartment(
                                    _selectedDepartmentIds.join(', '),
                                    _selectedDepartmentNames.join(', '));
                          });
                        },
                      ),
                      onTap: () {
                        setState(() {
                          if (_selectedDepartmentIds
                              .contains(department.idd.toString())) {
                            _selectedDepartmentIds
                                .remove(department.idd.toString());
                            _selectedDepartmentNames.remove(department.namee);
                          } else {
                            _selectedDepartmentIds
                                .add(department.idd.toString());
                            if (!_selectedDepartmentNames
                                .contains(department.namee)) {
                              _selectedDepartmentNames.add(department.namee);
                            }
                          }
                          log(_selectedDepartmentIds.toString());
                          BlocProvider.of<FilterCubit>(context)
                              .saveSubdepartment(
                                  _selectedDepartmentIds.join(', '),
                                  _selectedDepartmentNames.join(', '));
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
