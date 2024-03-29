import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {

    on<HomeItemsLoddingEvent>((event, emit) async {
      emit(ItemsLoddingState());
      await Future.delayed(Duration(seconds: 3));
      emit(HomeInitial());

    },);
    on<ProfileBtnClickedEvent>((event, emit) {
      emit(ProfileState());
    });
    on<ProfilePicClickedEvent>((event, emit) {
      emit(ProfileState());
    });
    on<ChatBtnClickedEvent>((event, emit) {
      emit(ChatState());
    });
    on<HomeBtnClickedEvent>((event, emit) {
      emit(HomeInitial());
    });
    on<EventBtnClickedEvent>((event, emit) {
      emit(EventState());
    });
  }
}
