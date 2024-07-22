part of 'hotel_cubit.dart';

@immutable
sealed class HotelState {}

final class HotelInitial extends HotelState {}

final class Hotellaod extends HotelState {}

final class Hotelsucess extends HotelState {
  final HotelEntity hotelresponse;

  Hotelsucess({required this.hotelresponse});
}

final class Hotelfailure extends HotelState {
  final String errmass;

  Hotelfailure({required this.errmass});
}
