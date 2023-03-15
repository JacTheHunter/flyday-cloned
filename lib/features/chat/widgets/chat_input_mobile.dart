import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/chat/blocs/send_text_message_bloc/send_message_bloc.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

import 'chat_input_mobile_attach_bottom_modal_sheet.dart';
import 'chat_input_mobile_text_field.dart';

class ChatInputMobile extends StatelessWidget {
  const ChatInputMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sendMessageBloc = context.read<SendMessageBloc>();
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
                        onDocumentsSelected: (documents) =>
                            sendMessageBloc.add(SendMessageEvent.sendDocuments(documents)),
                        onFilesSelected: (pathes) => sendMessageBloc.add(SendMessageEvent.sendFiles(pathes)),
                        onFilesSelectedFromWeb: (files) =>
                            sendMessageBloc.add(SendMessageEvent.sendFilesFromWeb(files)),
                        onImagesSelected: (pathes) => sendMessageBloc.add(SendMessageEvent.sendImages(pathes)),
                      ),
                    );
                  },
                  icon: Assets.images.vector.attach.svg()),
            ),
            // const SizedBox(
            //   width: 12,
            // ),
            const ChatInputMobileTextField(),
            const SizedBox(
              width: 2,
            ),
            IconButton(
              onPressed: () => context.read<SendMessageBloc>().add(const SendMessageEvent.sendText()),
              icon: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: context.appColors.chatInputMobileSendIconBackgroundColor,
                    borderRadius: BorderRadius.circular(36),
                  ),
                  padding: const EdgeInsets.fromLTRB(12, 9, 8, 9),
                  child: Assets.images.vector.send.svg(width: 16, height: 18)),
            )
          ],
        ),
      ),
    );
  }
}
