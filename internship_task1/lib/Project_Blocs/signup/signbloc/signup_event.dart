part of 'signup_bloc.dart';

@immutable
sealed class SignupEvent {}

class StudentEvent extends SignupEvent{}
class FacultyEvent extends SignupEvent{}
class OrganisationEvent extends SignupEvent{}
class FinalEvent extends SignupEvent{}

