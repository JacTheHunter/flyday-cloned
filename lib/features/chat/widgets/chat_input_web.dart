import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/chat/blocs/send_text_message_bloc/send_message_bloc.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

import 'chat_input_mobile_attach_bottom_modal_sheet.dart';
import 'chat_input_mobile_text_field.dart';

class ChatInputWeb extends StatelessWidget {
  const ChatInputWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sendMessageBloc = context.read<SendMessageBloc>();
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 24,
      ),
      child: SafeArea(
        child: Row(
          children: [
            IconButton(
                onPressed: () async {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => ChatInputMobileAttachBottomModalSheet(
                      onDocumentsSelected: (documents) =>
                          sendMessageBloc.add(SendMessageEvent.sendDocuments(documents)),
                      onFilesSelected: (pathes) => sendMessageBloc.add(SendMessageEvent.sendFiles(pathes)),
                      onFilesSelectedFromWeb: (files) => sendMessageBloc.add(SendMessageEvent.sendFilesFromWeb(files)),
                      onImagesSelected: (pathes) => sendMessageBloc.add(SendMessageEvent.sendImages(pathes)),
                    ),
                  );
                },
                icon: Assets.images.vector.attach.svg()),
            const SizedBox(
              width: 16,
            ),
            const SizedBox(height: 40, child: VerticalDivider()),
            const SizedBox(
              width: 16,
            ),
            const ChatInputMobileTextField(),
            const SizedBox(
              width: 16,
            ),
            ElevatedButton(
              onPressed: () => context.read<SendMessageBloc>().add(const SendMessageEvent.sendText()),
              style: ElevatedButton.styleFrom(
                backgroundColor: context.appColors.secondaryButtonBackgroundColor,
              ),
              child: Text(
                'send'.tr(),
                style: context.appTextTheme.secondaryButtonWebTextStyle,
              ),
            ),
            // IconButton(
            //   onPressed: () => context.read<SendMessageBloc>().add(const SendMessageEvent.sendText()),
            //   icon: Container(
            //       width: 36,
            //       height: 36,
            //       decoration: BoxDecoration(
            //         color: context.appColors.chatInputMobileSendIconBackgroundColor,
            //         borderRadius: BorderRadius.circular(36),
            //       ),
            //       padding: const EdgeInsets.fromLTRB(12, 9, 8, 9),
            //       child: Assets.images.vector.send.svg()),
            // )
          ],
        ),
      ),
    );
  }
}
