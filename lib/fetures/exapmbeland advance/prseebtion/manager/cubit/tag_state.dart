part of 'tag_cubit.dart';

@immutable
sealed class TagState {}

final class TagInitial extends TagState {}

final class ExambelcubitInitial extends TagState {}

final class Tagload extends TagState {}

final class Tagsucess extends TagState {
  final ExamelEntity ex;

  Tagsucess({required this.ex});
}

final class Tagfauleer extends TagState {
  final String errmas;

  Tagfauleer({required this.errmas});
}
