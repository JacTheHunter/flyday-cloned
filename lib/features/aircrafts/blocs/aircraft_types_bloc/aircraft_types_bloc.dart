import 'package:bloc/bloc.dart';
import 'package:flyday_broker/features/aircrafts/models/aircraft_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/blocs/bloc_transformers.dart';
import '../../../../common/models/state_status.dart';
import '../../../../common/utils/exceptions.dart';
import '../../repositories/i_aircrafts_repository.dart';

part 'aircraft_types_event.dart';
part 'aircraft_types_state.dart';
part 'aircraft_types_bloc.freezed.dart';

class AircraftTypesBloc extends Bloc<AircraftTypesEvent, AircraftTypesState> {
  final IAircraftsRepository _repository;

  AircraftTypesBloc({required IAircraftsRepository repository})
      : _repository = repository,
        super(const AircraftTypesState()) {
    on<_Fetch>(_onFetch, transformer: throttleDroppable(const Duration(milliseconds: 400)));
  }

  int _page = 1;
  int _totalPages = 1;

  void _onFetch(_Fetch event, Emitter<AircraftTypesState> emit) async {
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
      final result = await _repository.fetchAircraftTypes(limit: 50, page: _page);

      emit(
        state.copyWith(
          status: const StateStatus(),
          aircraftTypes: event.more != null ? (List.of(state.aircraftTypes)..addAll(result.results)) : result.results,
        ),
      );

      _totalPages = result.totalPages;
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }
}
