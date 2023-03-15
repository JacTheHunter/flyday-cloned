import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/chat/blocs/send_support_message_bloc/send_support_message_bloc.dart';

import '../../../common/utils/check_state_status.dart';

class SupportChatInputMobileTextField extends StatefulWidget {
  const SupportChatInputMobileTextField({Key? key}) : super(key: key);

  @override
  State<SupportChatInputMobileTextField> createState() => _SupportChatInputMobileTextFieldState();
}

class _SupportChatInputMobileTextFieldState extends State<SupportChatInputMobileTextField> {
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
    return BlocListener<SendSupportMessageBloc, SendSupportMessageState>(
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
            onChanged: (value) => context.read<SendSupportMessageBloc>().add(SendSupportMessageEvent.setText(value)),
            maxLines: 1,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(16, 11, 16, 12),
              hintStyle: context.appTextTheme.chatInputMobileHintTextStyle,
              hintText: 'message'.tr(),
            ),
            style: context.appTextTheme.chatInputMobileTextStyle,
          ),
        ),
      ),
    );
  }
}
