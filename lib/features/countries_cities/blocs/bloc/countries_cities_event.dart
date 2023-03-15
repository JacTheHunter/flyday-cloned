part of 'countries_cities_bloc.dart';

@freezed
class CountriesCitiesEvent with _$CountriesCitiesEvent {
  const factory CountriesCitiesEvent.fetchCountries([bool? more]) = _FetchCountries;
  const factory CountriesCitiesEvent.fetchCities(int coutryId, [bool? more]) = _FetchCities;
}
