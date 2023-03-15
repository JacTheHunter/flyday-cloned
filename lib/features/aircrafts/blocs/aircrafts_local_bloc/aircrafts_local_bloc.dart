import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/blocs/bloc_transformers.dart';
import '../../../../common/models/state_status.dart';
import '../../../../common/utils/exceptions.dart';
import '../../models/aircraft_info.dart';
import '../../repositories/i_aircrafts_repository.dart';

part 'aircrafts_local_event.dart';
part 'aircrafts_local_state.dart';
part 'aircrafts_local_bloc.freezed.dart';

class AircraftsLocalBloc extends Bloc<AircraftsLocalEvent, AircraftsLocalState> {
  final IAircraftsRepository _repository;

  AircraftsLocalBloc({required IAircraftsRepository repository})
      : _repository = repository,
        super(const AircraftsLocalState()) {
    on<_Fetch>(_onFetch, transformer: throttleDroppable(const Duration(milliseconds: 400)));
    on<_SetSearchPhrase>(_onSetSearchPhrase);
    on<_Delete>(_onDelete);
  }

  int _page = 1;
  int _totalPages = 1;

  void _onSetSearchPhrase(_SetSearchPhrase event, Emitter<AircraftsLocalState> emit) {
    emit(state.copyWith(searchPhrase: event.value));
    _page = 1;
    _totalPages = 1;
    add(const AircraftsLocalEvent.fetch());
  }

  void _onFetch(_Fetch event, Emitter<AircraftsLocalState> emit) async {
    if (event.more == true) {
      if (_page >= _totalPages) {
        return;
      } else {
        _page++;
      }
    } else {
      _page = 1;
    }
    try {
      final result = await _repository.fetchAircraftInfoLocal(limit: 20, page: _page, jetRegNumber: state.searchPhrase);

      emit(
        state.copyWith(
          status: const StateStatus(),
          localAircrafts: event.more != null ? (List.of(state.localAircrafts)..addAll(result.results)) : result.results,
        ),
      );

      _totalPages = result.totalPages;
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }

  void _onDelete(_Delete event, Emitter<AircraftsLocalState> emit) async {
    emit(
      state.copyWith(
        status: const StateStatus(),
        localAircrafts: (List.of(state.localAircrafts))..removeWhere((element) => element.id == event.id),
      ),
    );
    try {
      await _repository.deleteLocalAircraft(id: event.id);
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }
}
