import 'package:bloc/bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/features/ads/models/ad.dart';
import 'package:flyday_broker/features/aircrafts/models/aircraft_info.dart';
import 'package:flyday_broker/features/currencies/models/currency.dart';
import 'package:flyday_broker/features/offers/models/offer_to_post.dart';
import 'package:flyday_broker/features/offers/models/offer_to_post_aircraft.dart';
import 'package:flyday_broker/features/offers/models/offer_to_post_offer.dart';
import 'package:flyday_broker/features/offers/repositories/i_offers_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/models/form_model.dart';
import '../../../../common/utils/exceptions.dart';
import '../../../../common/utils/file_bytes_to_base64.dart';

part 'offer_editor_event.dart';
part 'offer_editor_state.dart';
part 'offer_editor_bloc.freezed.dart';

class OfferEditorBloc extends Bloc<OfferEditorEvent, OfferEditorState> {
  final IOffersRepository _repository;

  OfferEditorBloc({required IOffersRepository repository, required Ad ad})
      : _repository = repository,
        super(
          OfferEditorState(
            ad: ad,
            departureDate: FormModelCustom<DateTime>(
              name: 'Departure date',
              isRequired: true,
              value: ad.routeDetails.first.departureDate,
            ),
            specialConditionsIds: ad.routeDetails.expand<int>((rd) {
              return rd.specialConditions.map((sc) {
                return sc.id;
              });
            }).toList(),
          ),
        ) {
    on<_SetAircraft>(_onSetAircraft);
    on<_SetJetNumber>(_onSetJetNumber);
    on<_SetJetName>(_onSetJetName);
    on<_SetJetClass>(_onSetJetClass);
    on<_SetJetRolloutYear>(_onSetJetRolloutYear);
    on<_SetJetRegistrationYear>(_onSetJetRegistrationYear);
    on<_AddImages>(_onAddImages);
    on<_RemoveImage>(_onRemoveImage);
    on<_SetTotal>(_onSetTotal);
    on<_SetCurrency>(_onSetCurrency);
    on<_IncreaseSeatsNumber>(_onIncreaseSeatsNumber);
    on<_DecreaseSeatsNumber>(_onDecreaseSeatsNumber);
    on<_SetFlightTime>(_onSetFlightTime);
    on<_SetDepartureTime>(_onSetDepartureTime);
    on<_SetDepartureDate>(_onSetDepartureDate);
    on<_SetValidUntilDate>(_onSetValidUntilDate);
    on<_IncreaseRefuelingsNumber>(_onIncreaseRefuelingsNumber);
    on<_DecreaseRefuelingsNumber>(_onDecreaseRefuelingsNumber);
    on<_SetGeneralNote>(_onSetGeneralNote);
    on<_AddSpecialCondition>(_onAddSpecialCondition);
    on<_RemoveSpecialCondition>(_onRemoveSpecialCondition);
    on<_ActivateWebSearchAircraftWidget>(_onActivateWebSearchAircraftWidget);
    on<_NextWeb>(_onNextWeb);
    on<_BackWeb>(_onBackWeb);
    on<_Submit>(_onSubmit);
  }

  void _onSetAircraft(_SetAircraft event, Emitter<OfferEditorState> emit) {
    List<String> images = [];

    for (var image in event.value.images) {
      if (image.url != null && image.url!.isNotEmpty) {
        images.add(image.url!);
      } else if (image.photo != null && image.photo!.isNotEmpty) {
        images.add(image.photo!);
      }
    }
    emit(
      state.copyWith(
        jetNumber: state.jetNumber.setValue(event.value.regNumber),
        jetName: state.jetNumber.setValue(event.value.name),
        jetClass: state.jetClass.setValue(event.value.type),
        jetRegistrationYear: state.jetRegistrationYear.setValue(event.value.registrationYear.toString()),
        jetRolloutYear: state.jetRolloutYear.setValue(event.value.rolloutYear.toString()),
        seats: event.value.seats,
        images: images,
        aircraftInfo: event.value,
        isAircraftLocal: event.isLocal,
        aircraftLocalId: event.value.id,
        status: const StateStatus(),
      ),
    );
  }

  void _onSetJetNumber(_SetJetNumber event, Emitter<OfferEditorState> emit) {
    emit(state.copyWith(jetNumber: state.jetNumber.setValue(event.value), status: const StateStatus()));
  }

  void _onSetJetName(_SetJetName event, Emitter<OfferEditorState> emit) {
    emit(state.copyWith(jetName: state.jetName.setValue(event.value), status: const StateStatus()));
  }

  void _onSetJetClass(_SetJetClass event, Emitter<OfferEditorState> emit) {
    emit(state.copyWith(jetClass: state.jetClass.setValue(event.value), status: const StateStatus()));
  }

  void _onSetJetRolloutYear(_SetJetRolloutYear event, Emitter<OfferEditorState> emit) {
    emit(state.copyWith(jetRolloutYear: state.jetRolloutYear.setValue(event.value), status: const StateStatus()));
  }

  void _onSetJetRegistrationYear(_SetJetRegistrationYear event, Emitter<OfferEditorState> emit) {
    emit(state.copyWith(
        jetRegistrationYear: state.jetRegistrationYear.setValue(event.value), status: const StateStatus()));
  }

  void _onAddImages(_AddImages event, Emitter<OfferEditorState> emit) {
    emit(state.copyWith(images: List.of(state.images)..addAll(event.imagesPathes), status: const StateStatus()));
  }

  void _onRemoveImage(_RemoveImage event, Emitter<OfferEditorState> emit) {
    emit(state.copyWith(images: List.of(state.images)..remove(event.item), status: const StateStatus()));
  }

  void _onSetTotal(_SetTotal event, Emitter<OfferEditorState> emit) {
    emit(state.copyWith(total: state.total.setValue(event.value), status: const StateStatus()));
  }

  void _onSetCurrency(_SetCurrency event, Emitter<OfferEditorState> emit) {
    emit(state.copyWith(currency: state.currency.setValue(event.currency), status: const StateStatus()));
  }

  void _onIncreaseSeatsNumber(_IncreaseSeatsNumber event, Emitter<OfferEditorState> emit) {
    emit(state.copyWith(seats: state.seats + 1, status: const StateStatus()));
  }

  void _onDecreaseSeatsNumber(_DecreaseSeatsNumber event, Emitter<OfferEditorState> emit) {
    if (state.seats > 1) {
      emit(state.copyWith(seats: state.seats - 1, status: const StateStatus()));
    }
  }

  void _onSetFlightTime(_SetFlightTime event, Emitter<OfferEditorState> emit) {
    emit(state.copyWith(flightTime: state.flightTime.setValue(event.value), status: const StateStatus()));
  }

  void _onSetDepartureTime(_SetDepartureTime event, Emitter<OfferEditorState> emit) {
    emit(state.copyWith(departureTime: state.departureTime.setValue(event.value), status: const StateStatus()));
  }

  void _onSetDepartureDate(_SetDepartureDate event, Emitter<OfferEditorState> emit) {
    emit(state.copyWith(departureDate: state.departureDate.setValue(event.value), status: const StateStatus()));
  }

  void _onSetValidUntilDate(_SetValidUntilDate event, Emitter<OfferEditorState> emit) {
    emit(state.copyWith(validUntilDate: state.validUntilDate.setValue(event.value), status: const StateStatus()));
  }

  void _onIncreaseRefuelingsNumber(_IncreaseRefuelingsNumber event, Emitter<OfferEditorState> emit) {
    emit(state.copyWith(refuelings: state.refuelings + 1, status: const StateStatus()));
  }

  void _onDecreaseRefuelingsNumber(_DecreaseRefuelingsNumber event, Emitter<OfferEditorState> emit) {
    if (state.refuelings > 0) {
      emit(state.copyWith(refuelings: state.refuelings - 1, status: const StateStatus()));
    }
  }

  void _onSetGeneralNote(_SetGeneralNote event, Emitter<OfferEditorState> emit) {
    emit(state.copyWith(generalNote: event.value, status: const StateStatus()));
  }

  void _onAddSpecialCondition(_AddSpecialCondition event, Emitter<OfferEditorState> emit) {
    emit(state.copyWith(
      specialConditionsIds: List.of(state.specialConditionsIds)..add(event.specialConditionId),
      status: const StateStatus(),
    ));
  }

  void _onRemoveSpecialCondition(_RemoveSpecialCondition event, Emitter<OfferEditorState> emit) {
    emit(state.copyWith(
        specialConditionsIds: List.of(state.specialConditionsIds)..remove(event.specialConditionId),
        status: const StateStatus()));
  }

  void _onActivateWebSearchAircraftWidget(_ActivateWebSearchAircraftWidget event, Emitter<OfferEditorState> emit) {
    emit(state.copyWith(
        isWebSearchAircraftWidgetActive: !state.isWebSearchAircraftWidgetActive, status: const StateStatus()));
  }

  void _onNextWeb(_NextWeb event, Emitter<OfferEditorState> emit) {
    switch (state.currentStepWeb) {
      case 1:
        // emit(state.copyWith(currentStepWeb: 2));
        emit(
          state.copyWith(
              jetNumber: state.jetNumber.validate(),
              jetName: state.jetName.validate(),
              jetClass: state.jetClass.validate(),
              jetRolloutYear: state.jetRolloutYear.validate(),
              jetRegistrationYear: state.jetRegistrationYear.validate(),
              status: const StateStatus()),
        );
        if (state.isStep1WebValid) {
          emit(state.copyWith(currentStepWeb: 2, status: const StateStatus()));
        }
        break;
      case 3:
        emit(
          state.copyWith(
              total: state.total.validate(),
              currency: state.currency.validate(),
              flightTime: state.flightTime.validate(),
              departureDate: state.departureDate.validate(),
              departureTime: state.departureTime.validate(),
              validUntilDate: state.validUntilDate.validate(),
              status: const StateStatus()),
        );
        if (state.isStep3WebValid) {
          emit(state.copyWith(currentStepWeb: 4, status: const StateStatus()));
        }
        break;
      case 2:
        emit(state.copyWith(currentStepWeb: 3, status: const StateStatus()));
        break;
      case 4:
        add(const OfferEditorEvent.submit());
        break;
      default:
    }
  }

  void _onBackWeb(_BackWeb event, Emitter<OfferEditorState> emit) {
    if (state.currentStepWeb > 1) {
      emit(state.copyWith(currentStepWeb: state.currentStepWeb - 1, status: const StateStatus()));
    }
  }

  void _onSubmit(_Submit event, Emitter<OfferEditorState> emit) async {
    emit(
      state.copyWith(
          jetNumber: state.jetNumber.validate(),
          jetName: state.jetName.validate(),
          jetClass: state.jetClass.validate(),
          jetRolloutYear: state.jetRolloutYear.validate(),
          jetRegistrationYear: state.jetRegistrationYear.validate(),
          total: state.total.validate(),
          currency: state.currency.validate(),
          flightTime: state.flightTime.validate(),
          departureDate: state.departureDate.validate(),
          departureTime: state.departureTime.validate(),
          validUntilDate: state.validUntilDate.validate(),
          status: const StateStatus()),
    );
    if (state.isEverythingValid) {
      emit(state.copyWith(status: const LoadingStatus()));
      try {
        await _repository.createOffer(
          offer: OfferToPost(
            offer: OfferToPostOffer(
                price: state.total.value,
                currencyId: state.currency.value!.id,
                flightHour: state.flightTime.value!.inHours,
                flightMinute: state.flightTime.value!.inMinutes % 60,
                flightDateTime: DateTime(
                  state.departureDate.value!.year,
                  state.departureDate.value!.month,
                  state.departureDate.value!.day,
                  state.departureTime.value!.hour,
                  state.departureTime.value!.minute,
                ),
                validUntil: state.validUntilDate.value!,
                refuelingsNumber: state.refuelings,
                generalNote: state.generalNote,
                conveniences: state.specialConditionsIds,
                adId: state.ad.id),
            aircraft: OfferToPostAircraft(
              id: state.aircraftLocalId,
              isModified: state.isModified,
              regNumber: state.jetNumber.value,
              name: state.jetName.value,
              aircraftType: state.jetClass.value,
              rolloutYear: int.parse(state.jetRolloutYear.value),
              registrationYear: int.parse(state.jetRegistrationYear.value),
              jetsSeatsNumber: state.seats,
              imagesStringsInb64: await filePathsListToBase64List(state.localImages),
              imagesUrlsFromPatterns: state.imagesFromPattern,
            ),
          ),
        );

        emit(state.copyWith(status: const SuccessStatus()));
      } catch (e) {
        emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
      }
    }
  }
}
