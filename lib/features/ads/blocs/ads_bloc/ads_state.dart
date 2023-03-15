part of 'ads_bloc.dart';

@freezed
class AdsState with _$AdsState {
  const factory AdsState({
    @Default(StateStatus()) StateStatus status,
    @Default([]) List<Ad> ads,
    @Default(AdStatus.all) AdStatus adStatus,
    @Default(0) int adsSelectedStatusCount,
    Ad? selectedAd,
  }) = _AdsState;
}
