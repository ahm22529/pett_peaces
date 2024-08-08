part of 'filter_cubit.dart';

@immutable
sealed class FilterState {}

final class FilterInitial extends FilterState {}

final class Filtersucess extends FilterState {
  final int vule1, vule2;

  Filtersucess({required this.vule1, required this.vule2});
}

final class FilterDepart extends FilterState {
  final String name,id;

  FilterDepart({required this.name,required this.id});
}

final class Filtersub extends FilterState {
  final String name,id;

  Filtersub({required this.name,required this.id});
}
