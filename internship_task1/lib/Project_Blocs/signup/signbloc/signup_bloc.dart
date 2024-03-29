import 'package:bloc/bloc.dart';
import 'package:internship_task1/Project_Blocs/login/loginbloc/login_bloc.dart';
import 'package:meta/meta.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitial()) {
    on<StudentEvent>((event, emit) {
      emit(StudentState());
    });
    on<FacultyEvent>((event, emit) {
      // TODO: implement event handler
      emit(FacultyState());
    });
    on<OrganisationEvent>((event, emit) {
      // TODO: implement event handler
      emit(OrgnasitationState());
    });
    on<FinalEvent>((event, emit) async {
      // TODO: implement event handler
      emit(LodingState());
      await Future.delayed(Duration(seconds: 5));
      emit(LoddedState());
    });

  }
}
