import 'package:bloc/bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/features/chat/models/chat_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/utils/exceptions.dart';
import '../../repositories/i_chat_repository.dart';

part 'chat_info_event.dart';
part 'chat_info_state.dart';
part 'chat_info_bloc.freezed.dart';

class ChatInfoBloc extends Bloc<ChatInfoEvent, ChatInfoState> {
  final IChatRepository _repository;
  final int _chatId;
  ChatInfoBloc({required IChatRepository repository, required int chatId})
      : _repository = repository,
        _chatId = chatId,
        super(const ChatInfoState()) {
    on<_GetChatInfo>(_onGetChatInfo);
  }

  void _onGetChatInfo(_GetChatInfo event, Emitter<ChatInfoState> emit) async {
    emit(state.copyWith(status: const LoadingStatus()));
    try {
      final result = await _repository.getChatInfo(chatId: _chatId);
      emit(
        state.copyWith(
          status: const StateStatus(),
          selectedChat: result,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }
}
