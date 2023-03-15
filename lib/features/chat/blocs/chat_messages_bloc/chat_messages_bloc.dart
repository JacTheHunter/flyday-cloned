import 'package:bloc/bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/features/chat/repositories/i_chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/blocs/bloc_transformers.dart';
import '../../../../common/utils/exceptions.dart';
import '../../models/message.dart';

part 'chat_messages_event.dart';
part 'chat_messages_state.dart';
part 'chat_messages_bloc.freezed.dart';

class ChatMessagesBloc extends Bloc<ChatMessagesEvent, ChatMessagesState> {
  final IChatRepository _repository;
  final int _chatId;

  ChatMessagesBloc({required IChatRepository repository, required int chatId})
      : _repository = repository,
        _chatId = chatId,
        super(const ChatMessagesState()) {
    on<_Fetch>(_onFetch, transformer: throttleDroppable(const Duration(milliseconds: 400)));
    on<_AddMessage>(_onAddMessage);
  }

  int _page = 1;
  int _totalPages = 1;

  void _onFetch(_Fetch event, Emitter<ChatMessagesState> emit) async {
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
      final result = await _repository.fetchChatMessages(limit: 20, page: _page, chatId: _chatId);

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

  void _onAddMessage(_AddMessage event, Emitter<ChatMessagesState> emit) async {
    emit(state.copyWith(messages: List.of(state.messages)..insert(0, event.message)));
  }
}
