part of 'offers_bloc.dart';

@freezed
class OffersState with _$OffersState {
  const factory OffersState({
    @Default(0) int adId,
    @Default(StateStatus()) StateStatus status,
    @Default([]) List<Offer> offers,
    Offer? selectedOffer,
  }) = _OffersState;
}
