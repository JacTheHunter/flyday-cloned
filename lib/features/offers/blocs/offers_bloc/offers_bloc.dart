import 'package:bloc/bloc.dart';
import 'package:flyday_broker/features/offers/repositories/i_offers_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/blocs/bloc_transformers.dart';
import '../../../../common/models/state_status.dart';
import '../../../../common/utils/exceptions.dart';
import '../../models/offer.dart';

part 'offers_event.dart';
part 'offers_state.dart';
part 'offers_bloc.freezed.dart';

class OffersBloc extends Bloc<OffersEvent, OffersState> {
  final IOffersRepository _repository;

  OffersBloc({required IOffersRepository repository})
      : _repository = repository,
        super(const OffersState()) {
    on<_Fetch>(_onFetch, transformer: throttleDroppable(const Duration(milliseconds: 400)));
    on<_SetAdId>(_onSetAdId);
    on<_SetSelectedOffer>(_onSetSelectedOffer);
    on<_WithdrawOffer>(_onWithdrawOffer);
  }

  int _page = 1;
  int _totalPages = 1;

  void _onFetch(_Fetch event, Emitter<OffersState> emit) async {
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
      final result = await _repository.fetchOffersOfAd(limit: 20, page: _page, adId: state.adId);

      emit(
        state.copyWith(
          status: const StateStatus(),
          offers: event.more != null ? (List.of(state.offers)..addAll(result.results)) : result.results,
        ),
      );

      _totalPages = result.totalPages;
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }

  void _onWithdrawOffer(_WithdrawOffer event, Emitter<OffersState> emit) async {
    emit(state.copyWith(status: const LoadingStatus()));
    try {
      await _repository.withdrawOffer(id: event.id);

      emit(
        state.copyWith(
          status: const StateStatus.success(),
          offers: (List.of(state.offers)
            ..removeWhere(
              (element) => element.id == event.id,
            )),
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }

  void _onSetAdId(_SetAdId event, Emitter<OffersState> emit) {
    emit(OffersState(adId: event.adId));
    add(const OffersEvent.fetch());
  }

  void _onSetSelectedOffer(_SetSelectedOffer event, Emitter<OffersState> emit) {
    emit(state.copyWith(selectedOffer: state.offers.firstWhere((element) => element.id == event.id)));
  }
}
