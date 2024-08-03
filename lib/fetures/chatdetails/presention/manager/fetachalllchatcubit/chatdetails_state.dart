part of 'chatdetails_cubit.dart';

@immutable
sealed class ChatdetailsState {}

final class ChatdetailsInitial extends ChatdetailsState {}

final class ChatdetailsLoad extends ChatdetailsState {}

final class ChatdetailsSucess extends ChatdetailsState {
  final ChatDetailsEntity detailsEntity;

  ChatdetailsSucess({required this.detailsEntity});
}

final class ChatdetailsFauiler extends ChatdetailsState {
  final String errorMessage;

  ChatdetailsFauiler({required this.errorMessage});
}
