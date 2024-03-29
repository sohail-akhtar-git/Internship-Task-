import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_items_event.dart';
part 'home_items_state.dart';

class HomeItemsBloc extends Bloc<HomeItemsEvent, HomeItemsState> {
  HomeItemsBloc() : super(HomeItemsInitial()) {
    on<PostLikedEvent>((event, emit) {
      emit(LikedState());
    });
    on<PostDisLikedEvent>((event, emit) {
      emit(DisLikedState());
    });
  }
}
