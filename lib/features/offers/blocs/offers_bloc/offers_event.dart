part of 'offers_bloc.dart';

@freezed
class OffersEvent with _$OffersEvent {
  const factory OffersEvent.fetch([bool? more]) = _Fetch;
  const factory OffersEvent.setAdId(int adId) = _SetAdId;
  const factory OffersEvent.setSelectedOffer(int id) = _SetSelectedOffer;
  const factory OffersEvent.withdrawOffer(int id) = _WithdrawOffer;
}
