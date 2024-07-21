part of 'fetachingallcout_cubit.dart';

@immutable
sealed class FetachingallcoutState {}

final class FetachingallcoutInitial extends FetachingallcoutState {}

final class Fetachingallcoutload extends FetachingallcoutState {}

final class Fetachingallcoutsucess extends FetachingallcoutState {
  final CoatchEntiityFrist coatchEntiityFrist;

  Fetachingallcoutsucess({required this.coatchEntiityFrist});
}

final class Fetachingallcoutfaulerl extends FetachingallcoutState {
  final String errmas;

  Fetachingallcoutfaulerl({required this.errmas});
}
