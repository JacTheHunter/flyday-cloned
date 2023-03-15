import 'package:bloc/bloc.dart';
import 'package:flyday_broker/features/notifications/models/notification.dart';
import 'package:flyday_broker/features/notifications/repositories/i_notifications_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/blocs/bloc_transformers.dart';
import '../../../../common/models/state_status.dart';
import '../../../../common/utils/exceptions.dart';

part 'notifications_event.dart';
part 'notifications_state.dart';
part 'notifications_bloc.freezed.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  final INotificationsRepository _repository;

  NotificationsBloc({required INotificationsRepository repository})
      : _repository = repository,
        super(const NotificationsState()) {
    on<_Fetch>(_onFetch, transformer: throttleDroppable(const Duration(milliseconds: 400)));
  }

  int _page = 1;
  int _totalPages = 1;

  void _onFetch(_Fetch event, Emitter<NotificationsState> emit) async {
    if (event.more == true) {
      if (_page >= _totalPages) {
        return;
      } else {
        _page++;
      }
    } else {
      _page = 1;
    }
    emit(state.copyWith(status: const LoadingStatus()));
    try {
      final result = await _repository.fetch(limit: 20, page: _page);

      emit(
        state.copyWith(
          status: const StateStatus(),
          notifications: event.more != null ? (List.of(state.notifications)..addAll(result.results)) : result.results,
        ),
      );

      _totalPages = result.totalPages;
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }
}
