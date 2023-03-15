import 'package:bloc/bloc.dart';
import 'package:flyday_broker/common/models/form_status.dart';
import 'package:flyday_broker/features/profile/blocs/profile_bloc/profile_bloc.dart';
import 'package:flyday_broker/features/profile/models/language.dart';
import 'package:flyday_broker/features/profile/models/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/models/form_model.dart';
import '../../../../common/models/state_status.dart';
import '../../../../common/utils/exceptions.dart';
import '../../../../common/utils/file_bytes_to_base64.dart';
import '../../../countries_cities/blocs/bloc/countries_cities_bloc.dart';
import '../../../countries_cities/models/city.dart';
import '../../../countries_cities/models/country.dart';
import '../../../currencies/models/currency.dart';
import '../../repositories/i_profile_repository.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';
part 'edit_profile_bloc.freezed.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final IProfileRepository _repository;
  final ProfileBloc _profileBloc;
  final CountriesCitiesBloc _countriesCitiesBloc;

  EditProfileBloc({
    required IProfileRepository repository,
    required CountriesCitiesBloc countriesCitiesBloc,
    required ProfileBloc profileBloc,
    required Profile profile,
  })  : _repository = repository,
        _countriesCitiesBloc = countriesCitiesBloc,
        _profileBloc = profileBloc,
        super(
          EditProfileState(
            firstName: FormModel(
              name: 'First name',
              isRequired: true,
              maxLength: 255,
              value: profile.user.firstName,
              status: FormStatus.dirty,
            ),
            lastName: FormModel(
              name: 'Last name',
              isRequired: true,
              maxLength: 255,
              value: profile.user.lastName,
              status: FormStatus.dirty,
            ),
            companyName: FormModel(
              name: 'Company name',
              isRequired: true,
              maxLength: 255,
              value: profile.companyName,
              status: FormStatus.dirty,
            ),
            country: FormModelCustom<Country>(
              name: 'Country',
              isRequired: true,
              value: profile.country,
              status: FormStatus.dirty,
            ),
            city: FormModelCustom<City>(
              name: 'City',
              isRequired: true,
              value: profile.city,
              status: FormStatus.dirty,
            ),
            zipCode: FormModel(
              name: 'Zip',
              isRequired: true,
              minLength: 5,
              maxLength: 10,
              value: profile.zipCode,
              status: FormStatus.dirty,
            ),
            logoFilePath: profile.logo,
            phoneNumber: FormModel(
              name: 'Phone number',
              isPhone: true,
              value: profile.user.phone,
              status: FormStatus.dirty,
            ),
            websiteAddress: FormModel(
              name: 'Website address',
              maxLength: 255,
              value: profile.website,
              status: FormStatus.dirty,
            ),
            telegramLink: FormModel(
              name: 'Telegram link',
              maxLength: 400,
              value: profile.telegram,
              status: FormStatus.dirty,
            ),
            whatsappLink: FormModel(
              name: 'WhatsApp link',
              maxLength: 400,
              value: profile.whatsapp,
              status: FormStatus.dirty,
            ),
            messengerLink: FormModel(
              name: 'Messenger link',
              maxLength: 400,
              value: profile.messenger,
              status: FormStatus.dirty,
            ),
          ),
        ) {
    on<_UpdateCompanyName>(_onUpdateCompanyName);
    on<_UpdateCountry>(_onUpdateCountry);
    on<_UpdateCity>(_onUpdateCity);
    on<_UpdateZip>(_onUpdateZip);
    on<_UpdateFirstName>(_onUpdateFirstName);
    on<_UpdateLastName>(_onUpdateLastName);
    on<_UpdatePhoneNumber>(_onUpdatePhoneNumber);
    on<_UpdateWebsiteAddress>(_onUpdateWebsiteAddress);
    on<_UpdateTelegramLink>(_onUpdateTelegramLink);
    on<_UpdateWhatsAppLink>(_onUpdateWhatsAppLink);
    on<_UpdateMessengerLink>(_onUpdateMessengerLink);
    on<_UpdateLogoFilePath>(_onUpdateLogoFilePath);
    on<_Save>(_onSave);
    on<_UpdateCurrency>(_onUpdateCurrency);
    on<_UpdateLanguage>(_onUpdateLanguage);
  }

  void _onUpdateCompanyName(_UpdateCompanyName event, Emitter<EditProfileState> emit) {
    emit(state.copyWith(
        companyName: state.companyName.setValue(event.value), hasChanges: true, status: const StateStatus()));
  }

  void _onUpdateCountry(_UpdateCountry event, Emitter<EditProfileState> emit) {
    emit(state.copyWith(country: state.country.setValue(event.value), hasChanges: true, status: const StateStatus()));
    _countriesCitiesBloc.add(CountriesCitiesEvent.fetchCities(event.value.id));
  }

  void _onUpdateCity(_UpdateCity event, Emitter<EditProfileState> emit) {
    emit(state.copyWith(city: state.city.setValue(event.value), hasChanges: true, status: const StateStatus()));
  }

  void _onUpdateZip(_UpdateZip event, Emitter<EditProfileState> emit) {
    emit(state.copyWith(zipCode: state.zipCode.setValue(event.value), hasChanges: true, status: const StateStatus()));
  }

  void _onUpdateFirstName(_UpdateFirstName event, Emitter<EditProfileState> emit) {
    emit(state.copyWith(
        firstName: state.firstName.setValue(event.value), hasChanges: true, status: const StateStatus()));
  }

  void _onUpdateLastName(_UpdateLastName event, Emitter<EditProfileState> emit) {
    emit(state.copyWith(lastName: state.lastName.setValue(event.value), hasChanges: true, status: const StateStatus()));
  }

  void _onUpdatePhoneNumber(_UpdatePhoneNumber event, Emitter<EditProfileState> emit) {
    emit(state.copyWith(
        phoneNumber: state.phoneNumber.setValue(event.value), hasChanges: true, status: const StateStatus()));
  }

  void _onUpdateWebsiteAddress(_UpdateWebsiteAddress event, Emitter<EditProfileState> emit) {
    emit(state.copyWith(
        websiteAddress: state.websiteAddress.setValue(event.value), hasChanges: true, status: const StateStatus()));
  }

  void _onUpdateTelegramLink(_UpdateTelegramLink event, Emitter<EditProfileState> emit) {
    emit(state.copyWith(
        telegramLink: state.telegramLink.setValue(event.value), hasChanges: true, status: const StateStatus()));
  }

  void _onUpdateWhatsAppLink(_UpdateWhatsAppLink event, Emitter<EditProfileState> emit) {
    emit(state.copyWith(
        whatsappLink: state.whatsappLink.setValue(event.value), hasChanges: true, status: const StateStatus()));
  }

  void _onUpdateMessengerLink(_UpdateMessengerLink event, Emitter<EditProfileState> emit) {
    emit(state.copyWith(
        messengerLink: state.messengerLink.setValue(event.value), hasChanges: true, status: const StateStatus()));
  }

  void _onUpdateLogoFilePath(_UpdateLogoFilePath event, Emitter<EditProfileState> emit) {
    emit(state.copyWith(logoFilePath: event.value, hasChanges: true, status: const StateStatus()));
  }

  void _onSave(_Save event, Emitter<EditProfileState> emit) async {
    emit(state.copyWith(
      companyName: state.companyName.validate(),
      country: state.country.validate(),
      city: state.city.validate(),
      zipCode: state.zipCode.validate(),
      firstName: state.firstName.validate(),
      lastName: state.lastName.validate(),
      messengerLink: state.messengerLink.validate(),
      whatsappLink: state.whatsappLink.validate(),
      telegramLink: state.telegramLink.validate(),
      websiteAddress: state.websiteAddress.validate(),
      logoFilePath: state.logoFilePath,
    ));

    if (state.firstName.isValid &&
        state.lastName.isValid &&
        state.companyName.isValid &&
        state.country.isValid &&
        state.city.isValid &&
        state.zipCode.isValid &&
        state.phoneNumber.isValid &&
        state.websiteAddress.isValid &&
        state.telegramLink.isValid &&
        state.whatsappLink.isValid &&
        state.messengerLink.isValid) {
      emit(state.copyWith(status: const LoadingStatus()));
      try {
        final newProfile = await _repository.editAccountProfile(
          firstName: state.firstName.value.isNotEmpty ? state.firstName.value : null,
          lastName: state.lastName.value.isNotEmpty ? state.lastName.value : null,
          companyName: state.companyName.value.isNotEmpty ? state.companyName.value : null,
          cityId: state.city.value != null ? state.city.value!.id : null,
          zipCode: state.zipCode.value.isNotEmpty ? state.zipCode.value : null,
          websiteLink: state.websiteAddress.value.isNotEmpty ? state.websiteAddress.value : null,
          phoneNumber: state.phoneNumber.value.isNotEmpty ? state.phoneNumber.value : null,
          telegramLink: state.telegramLink.value.isNotEmpty ? state.telegramLink.value : null,
          whatsapLink: state.whatsappLink.value.isNotEmpty ? state.whatsappLink.value : null,
          messengerLink: state.messengerLink.value.isNotEmpty ? state.messengerLink.value : null,
          logoFileInBase64: state.logoFilePath != null && state.logoFilePath!.startsWith('http')
              ? null
              : (state.logoFilePath != null && state.logoFilePath!.isEmpty) || state.logoFilePath == null
                  ? ''
                  : await filePathToBase64(state.logoFilePath!),
        );
        _profileBloc.add(ProfileEvent.updateProfile(newProfile));
        emit(state.copyWith(status: const SuccessStatus()));
      } catch (e) {
        emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
      }
    }
  }

  void _onUpdateCurrency(_UpdateCurrency event, Emitter<EditProfileState> emit) async {
    emit(state.copyWith(status: const LoadingStatus()));
    try {
      final newProfile = await _repository.editAccountProfile(
        currencyId: event.value.id,
      );
      _profileBloc.add(ProfileEvent.updateProfile(newProfile));
      emit(state.copyWith(status: const SuccessStatus()));
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }

  void _onUpdateLanguage(_UpdateLanguage event, Emitter<EditProfileState> emit) async {
    emit(state.copyWith(status: const LoadingStatus()));
    try {
      final newProfile = await _repository.editAccountProfile(
        language: event.value.name,
      );
      _profileBloc.add(ProfileEvent.updateProfile(newProfile));
      emit(state.copyWith(status: const SuccessStatus()));
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }
}
