part of 'get_mating_cubit.dart';

@immutable
sealed class GetMatingState {}

final class GetMatingInitial extends GetMatingState {}

final class GetMatingload extends GetMatingState {}

final class GetMatingsucess extends GetMatingState {
  final MatingEntity matingEntity;

  GetMatingsucess({required this.matingEntity});
}

final class GetMatingfauiler extends GetMatingState {
  final String errmas;

  GetMatingfauiler({required this.errmas});
}
