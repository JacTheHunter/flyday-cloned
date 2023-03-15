part of 'offer_editor_bloc.dart';

@freezed
class OfferEditorState with _$OfferEditorState {
  const OfferEditorState._();
  const factory OfferEditorState({
    @Default(StateStatus()) StateStatus status,
    required final Ad ad,
    int? aircraftLocalId,
    @Default(FormModel(name: 'Number', isRequired: true, maxLength: 255)) FormModel jetNumber,
    @Default(FormModel(name: 'Name', isRequired: true, maxLength: 255)) FormModel jetName,
    @Default(FormModel(name: 'Class', maxLength: 255, isRequired: true)) FormModel jetClass,
    @Default(FormModel(name: 'Rollout year', isRequired: true, maxLength: 4, minLength: 4)) FormModel jetRolloutYear,
    @Default(FormModel(name: 'Registration year', isRequired: true, maxLength: 4, minLength: 4))
        FormModel jetRegistrationYear,
    @Default([]) List<String> images,
    @Default(FormModel(name: 'Total', isRequired: true, maxLength: 255)) FormModel total,
    @Default(FormModelCustom<Currency>(name: 'Currency', isRequired: true)) FormModelCustom<Currency> currency,
    @Default(1) int seats,
    @Default(FormModelCustom<Duration>(name: 'Flight time', isRequired: true)) FormModelCustom<Duration> flightTime,
    @Default(FormModelCustom<DateTime>(name: 'Departure date', isRequired: true))
        FormModelCustom<DateTime> departureDate,
    @Default(FormModelCustom<DateTime>(name: 'Departure time', isRequired: true))
        FormModelCustom<DateTime> departureTime,
    @Default(FormModelCustom<DateTime>(name: 'Valid until', isRequired: true)) FormModelCustom<DateTime> validUntilDate,
    @Default(0) int refuelings,
    @Default('') String generalNote,
    @Default([]) List<int> specialConditionsIds,
    AircraftInfo? aircraftInfo,
    @Default(false) bool isAircraftLocal,
    @Default(false) bool isWebSearchAircraftWidgetActive,
    @Default(1) int currentStepWeb,
  }) = _OfferEditorState;

  bool get isEverythingValid => isStep1WebValid && isStep3WebValid;

  bool get isStep1WebValid => areFormModelsValid(
        [
          jetNumber,
          jetName,
          jetClass,
          jetRolloutYear,
          jetRegistrationYear,
        ],
      );

  bool get isStep3WebValid => areFormModelsValid(
        [
          total,
          currency,
          flightTime,
          departureDate,
          departureTime,
          validUntilDate,
        ],
      );

  List<String> get localImages => images.where((element) => !element.startsWith('http')).toList();
  List<String> get imagesFromPattern => images.where((element) => element.startsWith('http')).toList();

  bool get isModified {
    if (aircraftInfo != null) {
      return (aircraftInfo!.regNumber != jetNumber.value ||
          aircraftInfo!.name != jetName.value ||
          aircraftInfo!.type != jetClass.value ||
          aircraftInfo!.registrationYear != int.tryParse(jetRegistrationYear.value) ||
          aircraftInfo!.rolloutYear != int.tryParse(jetRolloutYear.value) ||
          aircraftInfo!.seats != seats ||
          aircraftInfo!.images.map((ai) => ai.url ?? ai.photo).toList() != images);
    }

    return false;
  }
}
