part of 'countries_cities_bloc.dart';

@freezed
class CountriesCitiesState with _$CountriesCitiesState {
  const factory CountriesCitiesState({
    @Default(StateStatus()) StateStatus status,
    @Default([]) List<Country> countries,
    @Default([]) List<City> cities,
  }) = _CountriesCitiesState;
}
