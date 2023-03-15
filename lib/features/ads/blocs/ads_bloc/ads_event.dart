part of 'ads_bloc.dart';

@freezed
class AdsEvent with _$AdsEvent {
  const factory AdsEvent.fetchAds([bool? more]) = _FetchAds;
  const factory AdsEvent.updateAdStatus(AdStatus adStatus) = _UpdateAdStatus;
  const factory AdsEvent.selectAd(int id) = _SelectAd;
  const factory AdsEvent.chatOfAdOpened(int chatId) = _ChatOfAdOpened;
  const factory AdsEvent.newMessageInChatOfAd(int chatId) = _NewMessageInChatOfAd;
}
