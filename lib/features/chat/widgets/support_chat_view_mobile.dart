import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/common/utils/extention_on_date.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/utils/infinite_list_pagination.dart';
import 'package:flyday_broker/features/chat/blocs/send_support_message_bloc/send_support_message_bloc.dart';
import 'package:flyday_broker/features/chat/widgets/support_chat_input_mobile.dart';

import '../../../common/utils/check_state_status.dart';
import '../blocs/support_chat_messages_bloc/support_chat_messages_bloc.dart';
import 'chat_message_item.dart';
// import 'chat_restricted.dart';

class SupportChatViewMobile extends StatelessWidget {
  final int ownId;
  const SupportChatViewMobile({Key? key, required this.ownId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.chatPageMobileBackgroundColor,
      appBar: AppBar(
        elevation: 1,
        title: Text('support_chat'.tr()),
      ),
      body: BlocConsumer<SupportChatMessagesBloc, SupportChatMessagesState>(
        listener: (context, state) {
          checkStateStatusForError(context, state.status);
        },
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: InfiniteListPagination(
                    onMaxScrollExtent: () =>
                        context.read<SupportChatMessagesBloc>().add(const SupportChatMessagesEvent.fetch(true)),
                    builder: (context, scrollController) => ListView.builder(
                      controller: scrollController,
                      reverse: true,
                      itemCount: state.messages.length,
                      itemBuilder: (context, index) {
                        final message = state.messages[index];

                        final isOwn = (message.authorId ?? message.author?.id) == ownId;

                        final previousMessage =
                            index + 1 <= state.messages.length - 1 ? state.messages[index + 1] : null;

                        final nextMessage = index - 1 >= 0 ? state.messages[index - 1] : null;

                        final previousMessageNull = previousMessage == null;

                        final isAtSameDayAsPreviousMessage =
                            previousMessage?.createdAtLocal.isAtSameDayAs(message.createdAtLocal) ?? false;

                        final isDateRequired = previousMessageNull || !isAtSameDayAsPreviousMessage;

                        final isAtSameMinuteAsNextMessage =
                            nextMessage?.createdAtLocal.isAtSameMinuteAs(message.createdAtLocal) ?? false;

                        final isOwnPreviousMessage = previousMessage?.author?.id == ownId;

                        final isTimeRequired = index == 0 || !isAtSameMinuteAsNextMessage || !isOwnPreviousMessage;

                        return ChatMessageItem(
                          key: ValueKey(message.id),
                          isDateRequired: isDateRequired,
                          isOwn: isOwn,
                          isTimeRequired: isTimeRequired,
                          message: message,
                        );
                      },
                    ),
                  ),
                ),
              ),
              BlocSelector<SendSupportMessageBloc, SendSupportMessageState, bool>(
                selector: (state) {
                  return state.status is LoadingStatus;
                },
                builder: (context, state) {
                  return state
                      ? const LinearProgressIndicator()
                      : const SizedBox(
                          height: 4,
                        );
                },
              ),
              const SupportChatInputMobile(),
            ],
          );
        },
      ),
    );
  }
}
