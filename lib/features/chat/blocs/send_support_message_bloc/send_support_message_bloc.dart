import 'package:bloc/bloc.dart';
import 'package:flyday_broker/features/chat/blocs/support_chat_messages_bloc/support_chat_messages_bloc.dart';
import 'package:flyday_broker/features/chat/repositories/i_chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/models/file_name_with_file_bytes.dart';
import '../../../../common/models/state_status.dart';
import '../../../../common/utils/exceptions.dart';
import '../../../../common/utils/file_bytes_to_base64.dart';
import '../../models/message_type.dart';

part 'send_support_message_event.dart';
part 'send_support_message_state.dart';
part 'send_support_message_bloc.freezed.dart';

class SendSupportMessageBloc extends Bloc<SendSupportMessageEvent, SendSupportMessageState> {
  final IChatRepository _repository;
  final SupportChatMessagesBloc _supportChatMessagesBloc;

  SendSupportMessageBloc({
    required IChatRepository repository,
    required SupportChatMessagesBloc supportChatMessagesBloc,
  })  : _repository = repository,
        _supportChatMessagesBloc = supportChatMessagesBloc,
        super(const SendSupportMessageState()) {
    on<_SetText>(_onSetText);
    on<_SendText>(_onSendText);
    on<_SendImages>(_onSendImages);
    on<_SendFiles>(_onSendFiles);
    on<_SendFilesFromWeb>(_onSendFilesFromWeb);
  }

  void _onSetText(_SetText event, Emitter<SendSupportMessageState> emit) {
    emit(state.copyWith(text: event.text, status: const StateStatus()));
  }

  Future<void> _onSendText(_SendText event, Emitter<SendSupportMessageState> emit) async {
    if (state.text.isNotEmpty && state.status is! LoadingStatus) {
      emit(state.copyWith(status: const StateStatus.loading()));
      try {
        await _repository.sendhSupportChatMessage(
          text: state.text,
          messageType: MessageType.text,
        );
        _supportChatMessagesBloc.add(const SupportChatMessagesEvent.fetch());
        emit(const SendSupportMessageState(status: SuccessStatus()));
      } catch (e) {
        emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
      }
    }
  }

  void _onSendImages(_SendImages event, Emitter<SendSupportMessageState> emit) async {
    if (event.pathes.isNotEmpty && state.status is! LoadingStatus) {
      emit(state.copyWith(status: const StateStatus.loading()));
      try {
        final fileNameWithFileStringInB64List = await filePathsListToFileNameWithFileStringInB64List(event.pathes);
        await _repository.sendhSupportChatMessage(
          text: state.text,
          files: fileNameWithFileStringInB64List,
          messageType: MessageType.image,
        );
        _supportChatMessagesBloc.add(const SupportChatMessagesEvent.fetch());
        emit(const SendSupportMessageState(status: SuccessStatus()));
      } catch (e) {
        emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
      }
    }
  }

  void _onSendFiles(_SendFiles event, Emitter<SendSupportMessageState> emit) async {
    emit(state.copyWith(status: const StateStatus.loading()));
    try {
      final fileNameWithFileStringInB64List = await filePathsListToFileNameWithFileStringInB64List(event.pathes);
      await _repository.sendhSupportChatMessage(
        text: state.text,
        files: fileNameWithFileStringInB64List,
        messageType: MessageType.file,
      );
      _supportChatMessagesBloc.add(const SupportChatMessagesEvent.fetch());
      emit(const SendSupportMessageState(status: SuccessStatus()));
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }

  void _onSendFilesFromWeb(_SendFilesFromWeb event, Emitter<SendSupportMessageState> emit) async {
    emit(state.copyWith(status: const StateStatus.loading()));
    try {
      final fileNameWithFileStringInB64List = fileNamesWithBytesToFileNameWithFileStringInB64List(event.files);
      await _repository.sendhSupportChatMessage(
        text: state.text,
        files: fileNameWithFileStringInB64List,
        messageType: MessageType.file,
      );
      emit(const SendSupportMessageState());
      _supportChatMessagesBloc.add(const SupportChatMessagesEvent.fetch());
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }
}
