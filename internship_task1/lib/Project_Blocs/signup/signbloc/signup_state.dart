part of 'signup_bloc.dart';

@immutable
sealed class SignupState {}
sealed class SignupActionState extends SignupState{}

final class SignupInitial extends SignupState {}
class StudentState extends SignupState{}
class FacultyState extends SignupState{}
class OrgnasitationState extends SignupState{}
class LodingState extends SignupState{}
class LoddedState extends SignupActionState{}