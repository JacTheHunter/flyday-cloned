import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/blocs/bloc_transformers.dart';
import '../../../../common/models/state_status.dart';
import '../../../../common/utils/exceptions.dart';
import '../../models/aircraft_info.dart';
import '../../repositories/i_aircrafts_repository.dart';

part 'aircrafts_global_event.dart';
part 'aircrafts_global_state.dart';
part 'aircrafts_global_bloc.freezed.dart';

class AircraftsGlobalBloc extends Bloc<AircraftsGlobalEvent, AircraftsGlobalState> {
  final IAircraftsRepository _repository;

  AircraftsGlobalBloc({required IAircraftsRepository repository})
      : _repository = repository,
        super(const AircraftsGlobalState()) {
    on<_Get>(_onGet, transformer: throttleDroppable(const Duration(milliseconds: 400)));
    on<_SetSearchPhrase>(_onSetSearchPhrase);
  }

  void _onSetSearchPhrase(_SetSearchPhrase event, Emitter<AircraftsGlobalState> emit) {
    emit(state.copyWith(searchPhrase: event.value, globalAircraft: null));
    if (state.searchPhrase.isNotEmpty) {
      add(const AircraftsGlobalEvent.get());
    }
  }

  void _onGet(_Get event, Emitter<AircraftsGlobalState> emit) async {
    try {
      final result = await _repository.getAircraftInfoGlobal(jetRegNumber: state.searchPhrase);

      emit(
        state.copyWith(
          status: const StateStatus(),
          globalAircraft: result,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }
}
