import 'package:bloc/bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/common/utils/exceptions.dart';
import 'package:flyday_broker/features/chat/repositories/i_chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'support_chat_unread_messages_count_event.dart';
part 'support_chat_unread_messages_count_state.dart';
part 'support_chat_unread_messages_count_bloc.freezed.dart';

class SupportChatUnreadMessagesCountBloc
    extends Bloc<SupportChatUnreadMessagesCountEvent, SupportChatUnreadMessagesCountState> {
  final IChatRepository _repository;
  SupportChatUnreadMessagesCountBloc({
    required IChatRepository repository,
  })  : _repository = repository,
        super(const SupportChatUnreadMessagesCountState()) {
    on<_Get>(_onGet);
    on<_ChatOpened>(_onChatOpened);
    on<_NewMessage>(_onNewMessage);
  }

  void _onGet(_Get event, Emitter<SupportChatUnreadMessagesCountState> emit) async {
    emit(state.copyWith(status: const LoadingStatus()));
    try {
      final result = await _repository.getSupportChatUnreadMessagesCount();
      emit(state.copyWith(count: result, status: const StateStatus()));
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }

  void _onChatOpened(_ChatOpened event, Emitter<SupportChatUnreadMessagesCountState> emit) async {
    emit(state.copyWith(status: const StateStatus(), count: 0));
  }

  void _onNewMessage(_NewMessage event, Emitter<SupportChatUnreadMessagesCountState> emit) async {
    emit(state.copyWith(status: const StateStatus(), count: state.count + 1));
  }
}
