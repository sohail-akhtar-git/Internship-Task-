import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'recomend_event.dart';
part 'recomend_state.dart';

class RecomendBloc extends Bloc<RecomendEvent, RecomendState> {
  RecomendBloc() : super(RecomendInitial()) {
    on<RecomendEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
