import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'vales_event.dart';
part 'vales_state.dart';

class ValesBloc extends Bloc<ValesEvent, ValesState> {
  ValesBloc() : super(Empty()) {
    on<GetValesEvent>((event, emit) async {
      emit(const Loaded(mark: [true]));
    });
    on<AddValesEvent>((event, emit) async {
      emit(const Loaded(mark: [true]));
    });
  }
}
