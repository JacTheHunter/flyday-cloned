import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/blocs/bloc_transformers.dart';
import '../../../../common/models/state_status.dart';
import '../../../../common/utils/exceptions.dart';
import '../../models/message.dart';
import '../../repositories/i_chat_repository.dart';

part 'support_chat_messages_event.dart';
part 'support_chat_messages_state.dart';
part 'support_chat_messages_bloc.freezed.dart';

class SupportChatMessagesBloc extends Bloc<SupportChatMessagesEvent, SupportChatMessagesState> {
  final IChatRepository _repository;

  SupportChatMessagesBloc({
    required IChatRepository repository,
  })  : _repository = repository,
        super(const SupportChatMessagesState()) {
    on<_Fetch>(_onFetch, transformer: throttleDroppable(const Duration(milliseconds: 400)));
  }

  int _page = 1;
  int _totalPages = 1;

  void _onFetch(_Fetch event, Emitter<SupportChatMessagesState> emit) async {
    if (event.more == true) {
      if (_page >= _totalPages) {
        return;
      } else {
        _page++;
      }
    } else {
      _page = 1;
    }
    try {
      final result = await _repository.fetchSupportChatMessages(limit: 20, page: _page);

      emit(
        state.copyWith(
          status: const StateStatus(),
          messages: event.more != null ? (List.of(state.messages)..addAll(result.results)) : result.results,
        ),
      );

      _totalPages = result.totalPages;
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }
}
