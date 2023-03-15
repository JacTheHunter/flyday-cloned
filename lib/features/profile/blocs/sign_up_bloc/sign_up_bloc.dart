import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flyday_broker/common/models/form_model.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/common/utils/validation.dart';
import 'package:flyday_broker/features/authentication/blocs/bloc/authentication_bloc.dart';
import 'package:flyday_broker/features/countries_cities/blocs/bloc/countries_cities_bloc.dart';
import 'package:flyday_broker/features/countries_cities/models/city.dart';
import 'package:flyday_broker/features/countries_cities/models/country.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/blocs/bloc_transformers.dart';
import '../../../../common/utils/exceptions.dart';
import '../../../../common/utils/file_bytes_to_base64.dart';
import '../../repositories/i_profile_repository.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final IProfileRepository _repository;
  final CountriesCitiesBloc _countriesCitiesBloc;
  final AuthenticationBloc _authenticationBloc;

  SignUpBloc({
    required IProfileRepository repository,
    required CountriesCitiesBloc countriesCitiesBloc,
    required AuthenticationBloc authenticationBloc,
  })  : _repository = repository,
        _countriesCitiesBloc = countriesCitiesBloc,
        _authenticationBloc = authenticationBloc,
        super(SignUpState(
          termsAndConditions: FormModelCustom<bool>(
            name: 'Terms and conditions',
            formModelCustomValidator: FormModelCustomValidator.bool(
                errorTextIfNotValid: 'You must read and agree to the Terms and Conditions'),
          ),
          privacyPolicy: FormModelCustom<bool>(
            name: 'Privacy policy',
            formModelCustomValidator:
                FormModelCustomValidator.bool(errorTextIfNotValid: 'You must read and agree to the Privacy policy'),
          ),
        )) {
    on<_UpdateEmail>(_onUpdateEmail, transformer: debounceRestartable(const Duration(milliseconds: 350)));
    on<_UpdatePassword>(_onUpdatePassword);
    on<_UpdateConfirmPassword>(_onUpdateConfirmPassword);
    on<_UpdateCompanyName>(_onUpdateCompanyName);
    on<_UpdateCountry>(_onUpdateCountry);
    on<_UpdateCity>(_onUpdateCity);
    on<_UpdateZip>(_onUpdateZip);
    on<_UpdateFirstName>(_onUpdateFirstName);
    on<_UpdateLastName>(_onUpdateLastName);
    on<_UpdateWebsiteAddress>(_onUpdateWebsiteAddress);
    on<_UpdatePhoneNumber>(_onUpdatePhoneNumber);
    on<_UpdateTelegramLink>(_onUpdateTelegramLink);
    on<_UpdateWhatsAppLink>(_onUpdateWhatsAppLink);
    on<_UpdateMessengerLink>(_onUpdateMessengerLink);
    on<_UpdateLogoFilePath>(_onUpdateLogoFilePath);
    on<_UpdateTermsAndConditions>(_onUpdateTermsAndConditions);
    on<_UpdatePrivacyPolice>(_onUpdatePrivacyPolice);
    on<_Next>(_onNext);
    on<_Back>(_onBack);
  }

  void _onUpdateEmail(_UpdateEmail event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(email: state.email.setValue(event.value), isEmailAvailable: true));
    if (state.email.isValid && state.email.isDirty) {
      emit(state.copyWith(status: const StateStatus.loading()));
      try {
        final isEmailAvailable = await _repository.isEmailAvailable(state.email.value);
        emit(state.copyWith(isEmailAvailable: isEmailAvailable, status: const StateStatus()));
      } catch (e) {
        emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
      }
    }
  }

  void _onUpdatePassword(_UpdatePassword event, Emitter<SignUpState> emit) {
    emit(state.copyWith(password: state.password.setValue(event.value), status: const StateStatus()));
  }

  void _onUpdateConfirmPassword(_UpdateConfirmPassword event, Emitter<SignUpState> emit) {
    emit(state.copyWith(confirmPassword: state.confirmPassword.setValue(event.value), status: const StateStatus()));
  }

  void _onUpdateCompanyName(_UpdateCompanyName event, Emitter<SignUpState> emit) {
    emit(state.copyWith(companyName: state.companyName.setValue(event.value), status: const StateStatus()));
  }

  void _onUpdateCountry(_UpdateCountry event, Emitter<SignUpState> emit) {
    emit(state.copyWith(country: state.country.setValue(event.value), status: const StateStatus()));
    _countriesCitiesBloc.add(CountriesCitiesEvent.fetchCities(event.value.id));
  }

  void _onUpdateCity(_UpdateCity event, Emitter<SignUpState> emit) {
    emit(state.copyWith(city: state.city.setValue(event.value), status: const StateStatus()));
  }

  void _onUpdateZip(_UpdateZip event, Emitter<SignUpState> emit) {
    emit(state.copyWith(zipCode: state.zipCode.setValue(event.value), status: const StateStatus()));
  }

  void _onUpdateFirstName(_UpdateFirstName event, Emitter<SignUpState> emit) {
    emit(state.copyWith(firstName: state.firstName.setValue(event.value), status: const StateStatus()));
  }

  void _onUpdateLastName(_UpdateLastName event, Emitter<SignUpState> emit) {
    emit(state.copyWith(lastName: state.lastName.setValue(event.value), status: const StateStatus()));
  }

  void _onUpdateWebsiteAddress(_UpdateWebsiteAddress event, Emitter<SignUpState> emit) {
    emit(state.copyWith(websiteAddress: state.websiteAddress.setValue(event.value), status: const StateStatus()));
  }

  void _onUpdatePhoneNumber(_UpdatePhoneNumber event, Emitter<SignUpState> emit) {
    emit(state.copyWith(phoneNumber: state.phoneNumber.setValue(event.value), status: const StateStatus()));
  }

  void _onUpdateTelegramLink(_UpdateTelegramLink event, Emitter<SignUpState> emit) {
    emit(state.copyWith(telegramLink: state.telegramLink.setValue(event.value), status: const StateStatus()));
  }

  void _onUpdateWhatsAppLink(_UpdateWhatsAppLink event, Emitter<SignUpState> emit) {
    emit(state.copyWith(whatsappLink: state.whatsappLink.setValue(event.value), status: const StateStatus()));
  }

  void _onUpdateMessengerLink(_UpdateMessengerLink event, Emitter<SignUpState> emit) {
    emit(state.copyWith(messengerLink: state.messengerLink.setValue(event.value), status: const StateStatus()));
  }

  void _onUpdateLogoFilePath(_UpdateLogoFilePath event, Emitter<SignUpState> emit) {
    emit(state.copyWith(logoFilePath: event.value, status: const StateStatus()));
  }

  void _onUpdateTermsAndConditions(_UpdateTermsAndConditions event, Emitter<SignUpState> emit) {
    emit(state.copyWith(
        termsAndConditions: state.termsAndConditions.setValue(event.value), status: const StateStatus()));
  }

  void _onUpdatePrivacyPolice(_UpdatePrivacyPolice event, Emitter<SignUpState> emit) {
    emit(state.copyWith(privacyPolicy: state.privacyPolicy.setValue(event.value), status: const StateStatus()));
  }

  void _onNext(_Next event, Emitter<SignUpState> emit) async {
    switch (state.step) {
      case 0:
        emit(
          state.copyWith(
            email: state.email.validate(),
            password: state.password.validate(),
            confirmPassword: state.confirmPassword.validate(),
          ),
        );
        if (state.email.isValid) {
          emit(state.copyWith(status: const StateStatus.loading()));
          try {
            final isEmailAvailable = await _repository.isEmailAvailable(state.email.value);
            emit(state.copyWith(isEmailAvailable: isEmailAvailable, status: const StateStatus()));

            if (isEmailAvailable &&
                state.email.isValid &&
                state.password.isValid &&
                state.confirmPassword.isValid &&
                state.confirmPasswordErrorText == null) {
              emit(state.copyWith(step: state.step + 1, status: const StateStatus()));
            }
          } catch (e) {
            emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
          }
        }
        break;
      case 1:
        emit(
          state.copyWith(
            companyName: state.companyName.validate(),
            country: state.country.validate(),
            city: state.city.validate(),
            zipCode: state.zipCode.validate(),
          ),
        );

        if (state.companyName.isValid && state.country.isValid && state.city.isValid && state.zipCode.isValid) {
          emit(
            state.copyWith(step: state.step + 1, status: const StateStatus()),
          );
        }

        break;
      case 2:
        emit(
          state.copyWith(
            firstName: state.firstName.validate(),
            lastName: state.lastName.validate(),
          ),
        );

        if (state.firstName.isValid && state.lastName.isValid) {
          emit(
            state.copyWith(step: state.step + 1, status: const StateStatus()),
          );
        }

        break;
      case 3:
        emit(
          state.copyWith(
            websiteAddress: state.websiteAddress.validate(),
            phoneNumber: state.phoneNumber.validate(),
            telegramLink: state.telegramLink.validate(),
            whatsappLink: state.whatsappLink.validate(),
            messengerLink: state.messengerLink.validate(),
            termsAndConditions: state.termsAndConditions.validate(),
            privacyPolicy: state.privacyPolicy.validate(),
          ),
        );

        if (state.websiteAddress.isValid &&
            state.phoneNumber.isValid &&
            state.telegramLink.isValid &&
            state.whatsappLink.isValid &&
            state.privacyPolicy.isValid &&
            state.termsAndConditions.isValid &&
            state.messengerLink.isValid) {
          emit(state.copyWith(status: const StateStatus.loading()));
          try {
            final token = await _repository.createAccount(
              email: state.email.value,
              password: state.password.value,
              firstName: state.firstName.value,
              lastName: state.lastName.value,
              companyName: state.companyName.value,
              cityId: state.city.value?.id ?? 1,
              zipCode: state.zipCode.value,
              phoneNumber: state.phoneNumber.value,
              websiteLink: state.websiteAddress.value,
              whatsapLink: state.whatsappLink.value,
              telegramLink: state.telegramLink.value,
              messengerLink: state.messengerLink.value,
              logoFileInBase64: state.logoFilePath != null ? await filePathToBase64(state.logoFilePath!) : null,
            );
            _authenticationBloc.add(AuthenticationEvent.updateAuthenticationToken(token: token));
            emit(state.copyWith(status: const StateStatus.success()));
          } catch (e) {
            emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
          }
        }

        break;
      default:
        emit(state.copyWith(step: state.step + 1, status: const StateStatus()));
    }
  }

  void _onBack(_Back event, Emitter<SignUpState> emit) {
    emit(state.copyWith(step: state.step - 1, status: const StateStatus()));
  }
}
