import 'package:bloc/bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/utils/exceptions.dart';
import '../../models/city.dart';
import '../../models/country.dart';
import '../../repositories/i_countries_cities_repository.dart';

part 'countries_cities_event.dart';
part 'countries_cities_state.dart';
part 'countries_cities_bloc.freezed.dart';

class CountriesCitiesBloc extends Bloc<CountriesCitiesEvent, CountriesCitiesState> {
  final ICountriesCitiesRepository _repository;
  int _countriesPage = 1;
  int _countriesTotalPages = 1;
  int _citiesPage = 1;
  int _citiesTotalPages = 1;

  CountriesCitiesBloc({
    required ICountriesCitiesRepository repository,
  })  : _repository = repository,
        super(const CountriesCitiesState()) {
    on<_FetchCountries>(_onFetchCountries);
    on<_FetchCities>(_onFetchCities);
  }

  void _onFetchCountries(_FetchCountries event, Emitter<CountriesCitiesState> emit) async {
    if (event.more == true) {
      if (_countriesPage >= _countriesTotalPages) {
        return;
      } else {
        _countriesPage++;
      }
    } else {
      _countriesPage = 1;
    }
    emit(state.copyWith(
      status: const LoadingStatus(),
    ));
    try {
      final result = await _repository.fetchCountries(limit: 1000, page: _countriesPage);

      emit(state.copyWith(countries: result.results, status: const StateStatus()));

      _countriesTotalPages = result.totalPages;
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }

  void _onFetchCities(_FetchCities event, Emitter<CountriesCitiesState> emit) async {
    if (event.more == true) {
      if (_citiesPage >= _citiesTotalPages) {
        return;
      } else {
        _citiesPage++;
      }
    } else {
      _citiesPage = 1;
    }
    emit(state.copyWith(status: const LoadingStatus()));
    try {
      final result = await _repository.fetchCities(countryId: event.coutryId, limit: 10000, page: _citiesPage);

      emit(state.copyWith(cities: result.results, status: const StateStatus()));

      _citiesTotalPages = result.totalPages;
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }
}
