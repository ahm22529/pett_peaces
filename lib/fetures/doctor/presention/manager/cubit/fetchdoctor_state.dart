part of 'fetchdoctor_cubit.dart';

@immutable
sealed class FetchdoctorState {}

final class FetchdoctorInitial extends FetchdoctorState {}

final class Fetchdoctorload extends FetchdoctorState {}

final class Fetchdoctorsucess extends FetchdoctorState {
  final DoctorEntity doctorEntity;

  Fetchdoctorsucess({required this.doctorEntity});
}

final class Fetchdoctorsucessserch extends FetchdoctorState {
  final DoctorEntity doctorEntity;

  Fetchdoctorsucessserch({required this.doctorEntity});
}

final class FetchdoctorfAUILER extends FetchdoctorState {
  final String errmas;

  FetchdoctorfAUILER({required this.errmas});
}
