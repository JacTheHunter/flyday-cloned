import 'package:easy_localization/easy_localization.dart';
import 'package:flyday_broker/common/utils/validation.dart';
import 'form_status.dart';

abstract class BaseFormModel<T> {
  const BaseFormModel();
  String? get errorText;
  bool get isValid;
  bool get isDirty;
  BaseFormModel setValue(T value);
  BaseFormModel validate();
  BaseFormModel reset(T? value);
}

class FormModel extends BaseFormModel<String> {
  final String value;
  final String name;
  final FormStatus status;
  final bool isRequired;
  final bool isEmail;
  final bool isPhone;
  final int? minLength;
  final int? maxLength;

  const FormModel({
    this.value = '',
    this.name = 'Field',
    this.status = FormStatus.pure,
    this.isRequired = false,
    this.isEmail = false,
    this.isPhone = false,
    this.minLength,
    this.maxLength,
  });

  @override
  String? get errorText {
    if (status == FormStatus.dirty) {
      if (isRequired && value.isEmpty) {
        return '_._is_required'.tr(args: [name]);
      } else if (isEmail && value.isNotEmpty && !isEmailValid(value)) {
        return '_._is_not_valid_email_address'.tr(args: [name]);
      } else if (isPhone && value.isNotEmpty && !isPhoneNumberValid(value)) {
        return '_._is_not_valid_phone_number'.tr(args: [name]);
      } else if (minLength != null && !isMinLengthValid(value, minLength!)) {
        return '_._should_contain_at_least_._characters'.tr(args: [name, minLength.toString()]);
      } else if (maxLength != null && !isMaxLengthValid(value, maxLength!)) {
        return '_._should_not_exceed_more_than_._characters'.tr(args: [name, maxLength.toString()]);
      }
    }
    return null;
  }

  @override
  bool get isValid => errorText == null;

  @override
  bool get isDirty => status == FormStatus.dirty;

  @override
  FormModel reset(String? value) => _coppyWith(status: FormStatus.pure, value: value ?? '');

  @override
  FormModel setValue(String? value) => _coppyWith(value: value);

  @override
  FormModel validate() => _coppyWith(status: FormStatus.dirty);

  FormModel _coppyWith({
    String? value,
    String? name,
    FormStatus? status,
    bool? isRequired,
    bool? isEmail,
    bool? isPhone,
    int? minLength,
    int? maxLength,
  }) {
    return FormModel(
      value: value ?? this.value,
      name: name ?? this.name,
      status: status ?? this.status,
      isRequired: isRequired ?? this.isRequired,
      isEmail: isEmail ?? this.isEmail,
      isPhone: isPhone ?? this.isPhone,
      minLength: minLength ?? this.minLength,
      maxLength: maxLength ?? this.maxLength,
    );
  }

  @override
  operator ==(Object other) =>
      other is FormModel &&
      other.value == value &&
      other.name == name &&
      other.status == status &&
      other.isRequired == isRequired &&
      other.isEmail == isEmail &&
      other.isPhone == isPhone &&
      other.minLength == minLength &&
      other.maxLength == maxLength;

  @override
  int get hashCode => Object.hash(value, name, status, isRequired, isEmail, isPhone, minLength, maxLength);
}

class FormModelCustom<T> extends BaseFormModel<T> {
  final T? value;
  final String name;
  final FormStatus status;
  final bool isRequired;

  final FormModelCustomValidator<T>? formModelCustomValidator;

  const FormModelCustom({
    this.value,
    this.name = 'Field',
    this.status = FormStatus.pure,
    this.isRequired = false,
    this.formModelCustomValidator,
  });

  @override
  String? get errorText {
    if (status == FormStatus.dirty) {
      if (isRequired && value == null) {
        return '$name is required';
      }
      if (formModelCustomValidator != null) {
        if (!formModelCustomValidator!.customCheckIsValid(value)) {
          return formModelCustomValidator!.customErrorTextIfNotValid;
        }
      }
    }
    return null;
  }

  @override
  bool get isValid => errorText == null;

  @override
  bool get isDirty => status == FormStatus.dirty;

  @override
  FormModelCustom<T> reset(T? value) => _coppyWith(status: FormStatus.pure, value: value);

  @override
  FormModelCustom<T> setValue(T? value) => _coppyWith(value: value);

  @override
  FormModelCustom<T> validate() => _coppyWith(status: FormStatus.dirty);

  FormModelCustom<T> _coppyWith({
    T? value,
    String? name,
    FormStatus? status,
    bool? isRequired,
    FormModelCustomValidator<T>? formModelCustomValidator,
  }) {
    return FormModelCustom(
      value: value ?? this.value,
      name: name ?? this.name,
      status: status ?? this.status,
      isRequired: isRequired ?? this.isRequired,
      formModelCustomValidator: formModelCustomValidator ?? this.formModelCustomValidator,
    );
  }

  @override
  operator ==(Object other) =>
      other is FormModel &&
      other.value == value &&
      other.name == name &&
      other.status == status &&
      other.isRequired == isRequired;

  @override
  int get hashCode => Object.hash(value, name, status, isRequired);
}

class FormModelCustomValidator<T> {
  /// Function should return [bool].
  /// If return value of this function
  /// is false [customError] will be returned
  /// by [FormModelCustom].[errorText]
  final bool Function(T? value) customCheckIsValid;
  final String customErrorTextIfNotValid;

  const FormModelCustomValidator({
    required this.customCheckIsValid,
    required this.customErrorTextIfNotValid,
  });

  factory FormModelCustomValidator.bool({required String errorTextIfNotValid}) =>
      FormModelCustomValidatorBoolTrue(customErrorTextIfNotValid: errorTextIfNotValid) as FormModelCustomValidator<T>;

  @override
  operator ==(Object other) =>
      other is FormModelCustomValidator &&
      other.customCheckIsValid == customCheckIsValid &&
      other.customErrorTextIfNotValid == customErrorTextIfNotValid;

  @override
  int get hashCode => Object.hash(customCheckIsValid, customErrorTextIfNotValid);
}

class FormModelCustomValidatorBoolTrue extends FormModelCustomValidator<bool> {
  FormModelCustomValidatorBoolTrue({required String customErrorTextIfNotValid})
      : super(customErrorTextIfNotValid: customErrorTextIfNotValid, customCheckIsValid: (val) => val ?? false);
}

bool areFormModelsValid(List<BaseFormModel> formModels) {
  for (var f in formModels) {
    if (!f.isValid) return false;
  }
  return true;
}
