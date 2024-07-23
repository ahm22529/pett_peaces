part of 'book_cubit.dart';

@immutable
sealed class BookState {}

final class BookInitial extends BookState {}

final class Bookload extends BookState {}

final class Booksucess extends BookState {}

final class Bookfailuere extends BookState {
  final String errmas;

  Bookfailuere({required this.errmas});
}
