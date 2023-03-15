import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
// import 'package:flyday_broker/features/chat/blocs/send_support_message_bloc/send_support_message_bloc.dart';
import 'package:flyday_broker/features/chat/widgets/support_chat_input_mobile_text_field.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

import '../blocs/send_support_message_bloc/send_support_message_bloc.dart';
import 'chat_input_mobile_attach_bottom_modal_sheet.dart';

class SupportChatInputMobile extends StatelessWidget {
  const SupportChatInputMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sendSupportMessageBloc = context.read<SendSupportMessageBloc>();
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        color: context.appColors.chatInputMobileBackgroundColor,
        border: Border(
          top: BorderSide(
            color: context.appColors.chatInputMobileBorderColor,
            width: 1,
          ),
        ),
      ),
      child: SafeArea(
        child: Row(
          children: [
            SizedBox(
              width: 34,
              child: IconButton(
                iconSize: 22,
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context2) => ChatInputMobileAttachBottomModalSheet(
                      onFilesSelected: (pathes) =>
                          sendSupportMessageBloc.add(SendSupportMessageEvent.sendFiles(pathes)),
                      onFilesSelectedFromWeb: (files) =>
                          sendSupportMessageBloc.add(SendSupportMessageEvent.sendFilesFromWeb(files)),
                      onImagesSelected: (pathes) =>
                          sendSupportMessageBloc.add(SendSupportMessageEvent.sendImages(pathes)),
                    ),
                  );
                },
                icon: Assets.images.vector.attach.svg(),
              ),
            ),
            const SupportChatInputMobileTextField(),
            const SizedBox(
              width: 2,
            ),
            IconButton(
              onPressed: () => sendSupportMessageBloc.add(const SendSupportMessageEvent.sendText()),
              icon: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: context.appColors.chatInputMobileSendIconBackgroundColor,
                  borderRadius: BorderRadius.circular(36),
                ),
                padding: const EdgeInsets.fromLTRB(12, 9, 8, 9),
                child: Assets.images.vector.send.svg(width: 16, height: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
