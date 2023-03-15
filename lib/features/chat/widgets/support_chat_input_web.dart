import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/chat/blocs/send_support_message_bloc/send_support_message_bloc.dart';
import 'package:flyday_broker/features/chat/widgets/support_chat_input_mobile_text_field.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

import 'chat_input_mobile_attach_bottom_modal_sheet.dart';

class SupportChatInputWeb extends StatelessWidget {
  const SupportChatInputWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sendSupportMessageBloc = context.read<SendSupportMessageBloc>();
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
                      onFilesSelected: (pathes) =>
                          sendSupportMessageBloc.add(SendSupportMessageEvent.sendFiles(pathes)),
                      onFilesSelectedFromWeb: (files) =>
                          sendSupportMessageBloc.add(SendSupportMessageEvent.sendFilesFromWeb(files)),
                      onImagesSelected: (pathes) =>
                          sendSupportMessageBloc.add(SendSupportMessageEvent.sendImages(pathes)),
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
            const SupportChatInputMobileTextField(),
            const SizedBox(
              width: 16,
            ),
            ElevatedButton(
              onPressed: () => sendSupportMessageBloc.add(const SendSupportMessageEvent.sendText()),
              style: ElevatedButton.styleFrom(
                backgroundColor: context.appColors.secondaryButtonBackgroundColor,
              ),
              child: Text(
                'send'.tr(),
                style: context.appTextTheme.secondaryButtonWebTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
