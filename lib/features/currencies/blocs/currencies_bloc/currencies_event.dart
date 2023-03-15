part of 'currencies_bloc.dart';

@freezed
class CurrenciesEvent with _$CurrenciesEvent {
  const factory CurrenciesEvent.fetch([bool? more]) = _Fetch;
}
