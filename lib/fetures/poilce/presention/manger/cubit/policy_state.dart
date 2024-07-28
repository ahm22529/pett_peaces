part of 'policy_cubit.dart';

@immutable
sealed class PolicyState {}

final class PolicyInitial extends PolicyState {}

final class PolicyIload extends PolicyState {}

final class PolicyIsuicess extends PolicyState {
  final Dataentity policyentity;

  PolicyIsuicess({required this.policyentity});
}

final class PolicyIsuicessAboutus extends PolicyState {
  final Dataentity policyentity;

  PolicyIsuicessAboutus({required this.policyentity});
}

final class Policyfauiler extends PolicyState {
  final String errmasg;

  Policyfauiler({required this.errmasg});
}
