import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../../../core/usecases/usecase.dart';
import '../../domain/entities/funds_form_entitie.dart';
import '../../domain/usecases/funds_form_usecase.dart';

part 'funds_form_event.dart';
part 'funds_form_state.dart';

class FundsFormBloc extends Bloc<FundsFormEvent, FundsFormState> {
  final GetFundsFormUseCase getFundsForm;

  FundsFormBloc({required this.getFundsForm}) : super(Empty()) {
    on<GetFundsFormEvent>((event, emit) async {
      emit(Loading());
      final fundsForm = await getFundsForm(NoParams());
      fundsForm!.fold(
        (l) => emit(Error(errorMessage: l.toString())),
        (r) => emit(Loaded(
          fundsForm: r,
          mark: false,
          date: DateTime.now(),
        )),
      );
    });

    on<LoadMoreItemsEvent>((event, emit) async {
      if (state.fundsForm == null) return;
      emit(
        Loaded(
          fundsForm: state.fundsForm!,
          mark: state.mark!,
          date: state.date!,
        ),
      );
    });

    on<MarkEvent>((event, emit) async {
      if (state.fundsForm == null) return;
      emit(
        Loaded(
            fundsForm: state.fundsForm!, mark: !state.mark!, date: state.date!),
      );
    });
    on<ChangeDateStartEvent>(
      (event, emit) async {
        if (state.fundsForm == null) return;
        emit(
          Loaded(
            fundsForm: state.fundsForm!,
            mark: state.mark!,
            date: event.date,
          ),
        );
      },
    );
  }
}
