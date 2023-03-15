import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flyday_broker/common/models/file_name_with_file_bytes.dart';
import 'package:flyday_broker/common/models/file_name_with_file_path.dart';
import 'package:flyday_broker/features/chat/blocs/chat_messages_bloc/chat_messages_bloc.dart';
import 'package:flyday_broker/features/chat/models/message_type.dart';
import 'package:flyday_broker/features/file_manager/models/document.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/models/error_status_message.dart';
import '../../../../common/models/state_status.dart';
import '../../../../common/utils/exceptions.dart';
import '../../../../common/utils/file_bytes_to_base64.dart';
import '../../data_sources/chat_socket_service.dart';
import '../../models/message.dart';

part 'send_message_event.dart';
part 'send_message_state.dart';
part 'send_message_bloc.freezed.dart';

class SendMessageBloc extends Bloc<SendMessageEvent, SendMessageState> {
  final ChatSocketService _socketService;
  final ChatMessagesBloc _chatMessagesBloc;
  final int _chatId;
  final int _ownId;

  SendMessageBloc(
      {required ChatSocketService socketService,
      required ChatMessagesBloc chatMessagesBloc,
      required int chatId,
      required int ownId})
      : _socketService = socketService,
        _chatId = chatId,
        _ownId = ownId,
        _chatMessagesBloc = chatMessagesBloc,
        super(const SendMessageState()) {
    on<_SetText>(_onSetText);
    on<_SendText>(_onSendText);
    on<_SendImages>(_onSendImages);
    on<_SendFiles>(_onSendFiles);
    on<_SendFilesFromWeb>(_onSendFilesFromWeb);
    on<_SendDocuments>(_onSendDocuments);
    on<_ReceiveOwnMessage>(_onReceiveOwnMessage);
    on<_ErrorFromSocket>(_onErrorFromSocket);
    _messagesStreamSubscription = _socketService.messagesFromSocket.listen((message) {
      _chatMessagesBloc.add(ChatMessagesEvent.addMessage(message));
      if (message.author?.id == _ownId) {
        add(const SendMessageEvent.receiveOwnMessage());
      }
    });
    _errorsStreamSubscription = _socketService.errorsFromSocket.listen((error) {
      add(SendMessageEvent.errorFromSocket(error));
    });
  }

  late final StreamSubscription<Message> _messagesStreamSubscription;
  late final StreamSubscription<String> _errorsStreamSubscription;

  void _onSetText(_SetText event, Emitter<SendMessageState> emit) {
    emit(state.copyWith(text: event.text, status: const StateStatus()));
  }

  void _onSendText(_SendText event, Emitter<SendMessageState> emit) {
    if (state.text.isNotEmpty && state.status is! LoadingStatus) {
      emit(state.copyWith(status: const StateStatus.loading()));
      try {
        _socketService.sendTextMessage(state.text, _chatId);
      } catch (e) {
        emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
      }
    }
  }

  void _onSendImages(_SendImages event, Emitter<SendMessageState> emit) async {
    if (event.pathes.isNotEmpty && state.status is! LoadingStatus) {
      emit(state.copyWith(status: const StateStatus.loading()));
      try {
        final fileNameWithFileStringInB64List = await filePathsListToFileNameWithFileStringInB64List(event.pathes);
        _socketService.sendFilesMessage(
          fileNameWithFileStringInB64List,
          state.text,
          _chatId,
          MessageType.image,
        );
      } catch (e) {
        emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
      }
    }
  }

  void _onSendFiles(_SendFiles event, Emitter<SendMessageState> emit) async {
    emit(state.copyWith(status: const StateStatus.loading()));
    try {
      final fileNameWithFileStringInB64List = await filePathsListToFileNameWithFileStringInB64List(event.pathes);
      _socketService.sendFilesMessage(
        fileNameWithFileStringInB64List,
        state.text,
        _chatId,
        MessageType.file,
      );
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }

  void _onSendFilesFromWeb(_SendFilesFromWeb event, Emitter<SendMessageState> emit) async {
    emit(state.copyWith(status: const StateStatus.loading()));
    try {
      final fileNameWithFileStringInB64List = fileNamesWithBytesToFileNameWithFileStringInB64List(event.files);
      _socketService.sendFilesMessage(
        fileNameWithFileStringInB64List,
        state.text,
        _chatId,
        MessageType.file,
      );
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }

  void _onSendDocuments(_SendDocuments event, Emitter<SendMessageState> emit) async {
    emit(state.copyWith(status: const StateStatus.loading()));
    try {
      _socketService.sendDocumentsMessage(
        event.documents.map((e) => FileNameWithFilePath(fileName: e.fileName, filePath: e.filePath)).toList(),
        state.text,
        _chatId,
      );
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(onRepositoryException(e))));
    }
  }

  void _onReceiveOwnMessage(_ReceiveOwnMessage event, Emitter<SendMessageState> emit) async {
    emit(state.copyWith(status: const SuccessStatus(), text: ''));
  }

  void _onErrorFromSocket(_ErrorFromSocket event, Emitter<SendMessageState> emit) async {
    emit(state.copyWith(status: ErrorStatus(ErrorStatusMessage(text: event.error))));
  }

  @override
  Future<void> close() {
    _socketService.dispose();
    _messagesStreamSubscription.cancel();
    _errorsStreamSubscription.cancel();
    return super.close();
  }
}
