import 'package:bloc/bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/features/currencies/repositories/i_currencies_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/blocs/bloc_transformers.dart';
import '../../../../common/utils/exceptions.dart';
import '../../models/currency.dart';

part 'currencies_event.dart';
part 'currencies_state.dart';
part 'currencies_bloc.freezed.dart';

class CurrenciesBloc extends Bloc<CurrenciesEvent, CurrenciesState> {
  final ICurrenciesRepository _repository;

  CurrenciesBloc({required ICurrenciesRepository repository})
      : _repository = repository,
        super(const CurrenciesState()) {
    on<_Fetch>(_onFetch, transformer: throttleDroppable(const Duration(milliseconds: 400)));
  }

  int _page = 1;
  int _totalPages = 1;

  void _onFetch(_Fetch event, Emitter<CurrenciesState> emit) async {
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
          currencies: event.more != null ? (List.of(state.currencies)..addAll(result.results)) : result.results,
        ),
      );

      _totalPages = result.totalPages;
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }
}
