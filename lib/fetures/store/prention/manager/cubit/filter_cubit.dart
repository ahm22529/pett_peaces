import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(FilterInitial());

  int minvule = 0;
  int maxvule = 2000;
  String namevule = "";
  String idvule = "";
  String subdepartname = '';
  String subid = '';

  Future<void> loadFilterValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    minvule = prefs.getInt('minValue') ?? 0;
    maxvule = prefs.getInt('maxValue') ?? 2000;
    namevule = prefs.getString('departmentName') ?? "";
    idvule = prefs.getString('id') ?? "";
    subdepartname = prefs.getString('subdepartment ') ?? "";
    subid = prefs.getString('idsub') ?? "";

    emit(Filtersucess(vule1: minvule, vule2: maxvule));
    emit(Filtersub(name: subdepartname, id: subid));
    emit(FilterDepart(name: namevule, id: idvule));
  }

  Future<void> saveMinMaxValues(int min, int max) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('minValue', min);
    await prefs.setInt('maxValue', max);
  }

  Future<void> saveDepartmentName(String name, String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('departmentName', name);
    await prefs.setString('id', id);
  }

  Future<void> saveSubdepartment(String name, String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('subdepartment ', name);
    await prefs.setString('idsub', id);
  }
}
