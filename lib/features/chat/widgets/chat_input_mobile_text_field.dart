import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/chat/blocs/send_text_message_bloc/send_message_bloc.dart';

import '../../../common/utils/check_state_status.dart';

class ChatInputMobileTextField extends StatefulWidget {
  const ChatInputMobileTextField({Key? key}) : super(key: key);

  @override
  State<ChatInputMobileTextField> createState() => _ChatInputMobileTextFieldState();
}

class _ChatInputMobileTextFieldState extends State<ChatInputMobileTextField> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SendMessageBloc, SendMessageState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        checkStateStatusForError(context, state.status);
        if (state.status is SuccessStatus && state.text.isEmpty) {
          _textEditingController.clear();
        }
      },
      child: Expanded(
        child: SizedBox(
          height: 40,
          child: TextFormField(
            controller: _textEditingController,
            onChanged: (value) => context.read<SendMessageBloc>().add(SendMessageEvent.setText(value)),
            maxLines: 1,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(16, 11, 16, 12),
                hintStyle: context.appTextTheme.chatInputMobileHintTextStyle,
                hintText: 'message'.tr()),
            style: context.appTextTheme.chatInputMobileTextStyle,
          ),
        ),
      ),
    );
  }
}
