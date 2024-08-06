import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'handel_cubit_state.dart';

class HandelCubitCubit extends Cubit<HandelCubitState> {
  HandelCubitCubit() : super(HandelCubitInitial());
}
