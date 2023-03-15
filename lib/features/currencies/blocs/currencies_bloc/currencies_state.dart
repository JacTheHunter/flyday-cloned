part of 'currencies_bloc.dart';

@freezed
class CurrenciesState with _$CurrenciesState {
  const factory CurrenciesState({
    @Default(StateStatus()) StateStatus status,
    @Default([]) List<Currency> currencies,
  }) = _CurrenciesState;
}
