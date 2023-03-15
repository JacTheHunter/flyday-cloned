import 'package:bloc/bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/blocs/bloc_transformers.dart';
import '../../../../common/utils/exceptions.dart';
import '../../models/special_condition.dart';
import '../../repositories/i_special_conditions_repository.dart';

part 'special_conditions_event.dart';
part 'special_conditions_state.dart';
part 'special_conditions_bloc.freezed.dart';

class SpecialConditionsBloc extends Bloc<SpecialConditionsEvent, SpecialConditionsState> {
  final ISpecialConditionsRepository _repository;

  SpecialConditionsBloc({required ISpecialConditionsRepository repository})
      : _repository = repository,
        super(const SpecialConditionsState()) {
    on<_Fetch>(_onFetch, transformer: throttleDroppable(const Duration(milliseconds: 400)));
  }

  int _page = 1;
  int _totalPages = 1;

  void _onFetch(_Fetch event, Emitter<SpecialConditionsState> emit) async {
    if (event.more == true) {
      if (_page >= _totalPages) {
        return;
      } else {
        _page++;
      }
    } else {
      _page = 1;
    }
    emit(state.copyWith(status: const LoadingStatus()));
    try {
      final result = await _repository.fetch(limit: 20, page: _page);

      emit(
        state.copyWith(
          status: const StateStatus(),
          specialConditions:
              event.more != null ? (List.of(state.specialConditions)..addAll(result.results)) : result.results,
        ),
      );

      _totalPages = result.totalPages;
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }
}
