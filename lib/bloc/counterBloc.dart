import 'package:state_management/bloc/counterState.dart';
import 'package:state_management/bloc/counterevent.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvents, CounterState> {
  CounterBloc() : super(CounterState(count: 0)) {
    on<IncrementEvent>(((event, emit) {
      emit(CounterState(count: state.count + 1));
    }));
  }
}
