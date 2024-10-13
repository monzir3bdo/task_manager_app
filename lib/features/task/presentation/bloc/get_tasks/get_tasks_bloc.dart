import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_tasks_event.dart';
part 'get_tasks_state.dart';
part 'get_tasks_bloc.freezed.dart';

class GetTasksBloc extends Bloc<GetTasksEvent, GetTasksState> {
  GetTasksBloc() : super(const GetTasksState.initial()) {
    on<GetTasksEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
