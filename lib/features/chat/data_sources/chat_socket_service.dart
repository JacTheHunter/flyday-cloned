import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flyday_broker/common/models/file_name_with_file_path.dart';
import 'package:flyday_broker/config/constants/api_endpoints.dart';
import 'package:flyday_broker/features/chat/models/message.dart';
import 'package:flyday_broker/features/chat/models/message_type.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:socket_io_client/socket_io_client.dart';

import '../../../common/models/file_name_with_file_string_in_b64.dart';

class ChatSocketService {
  final String jwt;
  final int chatId;

  ChatSocketService({required this.jwt, required this.chatId}) {
    OptionBuilder options = OptionBuilder().setExtraHeaders({
      'Authorization': 'jwt $jwt',
      'chat': '$chatId',
    });

    if (!kIsWeb) {
      options = options.setTransports(['websocket']);
    }

    _socket = io.io(
      ApiEndPoints.kSocketChatUrl,
      options.build(),
    );

    _socket.onConnect((_) {
      _isReady = true;
      _socket.onAny((event, data) {
        if (event == 'receive') {
          try {
            _messagesStreamController.sink.add(Message.fromJson(data));
          } catch (e) {
            _errorsStreamController.sink.add(data.toString());
          }
        }
      });
    });
    _socket.onError((data) {
      _errorsStreamController.sink.add(data.toString());
    });
    _socket.on('errors', (data) {
      _errorsStreamController.sink.add(data.toString());
    });
    _socket.onConnectError((data) {
      _errorsStreamController.sink.add(data.toString());
    });
  }

  late final io.Socket _socket;

  bool _isReady = false;

  bool get isReady => _isReady;

  final StreamController<Message> _messagesStreamController = StreamController();

  final StreamController<String> _errorsStreamController = StreamController();

  Stream<Message> get messagesFromSocket => _messagesStreamController.stream..asBroadcastStream();

  Stream<String> get errorsFromSocket => _errorsStreamController.stream..asBroadcastStream();

  void sendTextMessage(String message, final int chatId) {
    if (isReady) {
      _socket.emit('send_message', {
        'chat_id': chatId,
        'text': message,
        'type_message': 1,
      });
    }
  }

  void sendFilesMessage(
    List<FileNameWithFileStringInB64> fileNameWithFileStringInB64List,
    String message,
    final int chatId,
    MessageType type,
  ) {
    if (isReady) {
      try {
        _socket.emit(
          'send_message',
          {
            'chat_id': chatId,
            'text': message,
            'type_message': type.index,
            'files_base64': [
              ...fileNameWithFileStringInB64List.map(
                (f) => {
                  'file': f.fileStringInB64,
                  'file_name': f.fileName,
                },
              )
            ]
          },
        );
      } catch (e) {
        _errorsStreamController.sink.add(e.toString());
      }
    }
  }

  void sendDocumentsMessage(List<FileNameWithFilePath> fileNamesWithFilePathes, String message, final int chatId) {
    if (isReady) {
      try {
        _socket.emit(
          'send_message',
          {
            'chat_id': chatId,
            'text': message,
            'type_message': 4,
            'files_link': [
              ...fileNamesWithFilePathes.map(
                (f) => {
                  'url': f.filePath,
                  'file_name': f.fileName,
                },
              )
            ]
          },
        );
      } catch (e) {
        _errorsStreamController.sink.add(e.toString());
      }
    }
  }

  void dispose() {
    _socket.clearListeners();
    _socket.disconnect();
    _messagesStreamController.close();
  }
}
