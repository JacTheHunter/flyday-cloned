part of 'offer_editor_bloc.dart';

@freezed
class OfferEditorEvent with _$OfferEditorEvent {
  const factory OfferEditorEvent.setAircraft(AircraftInfo value, bool isLocal) = _SetAircraft;
  const factory OfferEditorEvent.setJetNumber(String value) = _SetJetNumber;
  const factory OfferEditorEvent.setJetName(String value) = _SetJetName;
  const factory OfferEditorEvent.setJetClass(String value) = _SetJetClass;
  const factory OfferEditorEvent.setJetRolloutYear(String value) = _SetJetRolloutYear;
  const factory OfferEditorEvent.setJetRegistrationYear(String value) = _SetJetRegistrationYear;
  const factory OfferEditorEvent.addImages(List<String> imagesPathes) = _AddImages;
  const factory OfferEditorEvent.removeImage(String item) = _RemoveImage;
  const factory OfferEditorEvent.setTotal(String value) = _SetTotal;
  const factory OfferEditorEvent.setCurrency(Currency currency) = _SetCurrency;
  const factory OfferEditorEvent.increaseSeatsNumber() = _IncreaseSeatsNumber;
  const factory OfferEditorEvent.decreaseSeatsNumber() = _DecreaseSeatsNumber;
  const factory OfferEditorEvent.setFlightTime(Duration value) = _SetFlightTime;
  const factory OfferEditorEvent.setDepartureTime(DateTime value) = _SetDepartureTime;
  const factory OfferEditorEvent.setDepartureDate(DateTime value) = _SetDepartureDate;
  const factory OfferEditorEvent.setValidUntilDate(DateTime value) = _SetValidUntilDate;
  const factory OfferEditorEvent.increaseRefuelingsNumber() = _IncreaseRefuelingsNumber;
  const factory OfferEditorEvent.decreaseRefuelingsNumber() = _DecreaseRefuelingsNumber;
  const factory OfferEditorEvent.setGeneralNote(String value) = _SetGeneralNote;
  const factory OfferEditorEvent.addSpecialCondition(int specialConditionId) = _AddSpecialCondition;
  const factory OfferEditorEvent.removeSpecialCondition(int specialConditionId) = _RemoveSpecialCondition;
  const factory OfferEditorEvent.activateWebSearchAircraftWidget() = _ActivateWebSearchAircraftWidget;
  const factory OfferEditorEvent.nextWeb() = _NextWeb;
  const factory OfferEditorEvent.backWeb() = _BackWeb;
  const factory OfferEditorEvent.submit() = _Submit;
}
