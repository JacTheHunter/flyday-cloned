import 'package:bloc/bloc.dart';
import 'package:flyday_broker/features/ads/models/ad_status.dart';
import 'package:flyday_broker/features/ads/repositories/i_ads_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/blocs/bloc_transformers.dart';
import '../../../../common/models/state_status.dart';
import '../../../../common/utils/exceptions.dart';
import '../../models/ad.dart';

part 'ads_event.dart';
part 'ads_state.dart';
part 'ads_bloc.freezed.dart';

class AdsBloc extends Bloc<AdsEvent, AdsState> {
  final IAdsRepository _repository;
  int _page = 1;
  int _totalPages = 1;
  AdsBloc({
    required IAdsRepository repository,
  })  : _repository = repository,
        super(const AdsState()) {
    on<_FetchAds>(_onFetchAds, transformer: throttleDroppable(const Duration(milliseconds: 400)));
    on<_UpdateAdStatus>(_onUpdateAdStatus);
    on<_SelectAd>(_onSelectAd);
    on<_NewMessageInChatOfAd>(_onNewMessageInChatOfAd);
    on<_ChatOfAdOpened>(_onChatOfAdOpened);
  }

  void _onFetchAds(_FetchAds event, Emitter<AdsState> emit) async {
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
      final result = await _repository.fetchAds(limit: 20, page: _page, status: state.adStatus);

      emit(
        state.copyWith(
          status: const StateStatus(),
          adsSelectedStatusCount: result.totalObjects,
          ads: event.more != null ? (List.of(state.ads)..addAll(result.results)) : result.results,
        ),
      );

      _totalPages = result.totalPages;
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }

  void _onUpdateAdStatus(_UpdateAdStatus event, Emitter<AdsState> emit) async {
    _page = 1;
    _totalPages = 1;
    emit(state.copyWith(adStatus: event.adStatus, adsSelectedStatusCount: 0, ads: []));
    add(const AdsEvent.fetchAds());
  }

  void _onSelectAd(_SelectAd event, Emitter<AdsState> emit) async {
    emit(state.copyWith(status: const LoadingStatus(), selectedAd: null));
    try {
      final ad = await _repository.getAd(id: event.id);

      emit(
        state.copyWith(
          status: const StateStatus(),
          selectedAd: ad,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }

  void _onNewMessageInChatOfAd(_NewMessageInChatOfAd event, Emitter<AdsState> emit) async {
    final index = state.ads.indexWhere((element) => element.chatId == event.chatId);
    if (index > -1) {
      final newAd = state.ads[index].copyWith(hasUnreadMessages: true);
      final newList = List.of(state.ads)
        ..removeAt(index)
        ..insert(index, newAd);
      emit(state.copyWith(ads: newList));
    }
  }

  void _onChatOfAdOpened(_ChatOfAdOpened event, Emitter<AdsState> emit) async {
    final index = state.ads.indexWhere((element) => element.chatId == event.chatId);
    if (index > -1) {
      final newAd = state.ads[index].copyWith(hasUnreadMessages: false);
      final newList = List.of(state.ads)
        ..removeAt(index)
        ..insert(index, newAd);
      emit(state.copyWith(ads: newList));
    }
  }
}
