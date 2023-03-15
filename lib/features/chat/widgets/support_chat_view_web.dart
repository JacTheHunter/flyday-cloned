import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extention_on_date.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/features/chat/widgets/support_chat_input_web.dart';

import '../../../common/models/state_status.dart';
import '../../../common/utils/check_state_status.dart';
import '../../../common/utils/infinite_list_pagination.dart';
import '../../../common/widgets/dashboard_web_view_wrapper.dart';
import '../blocs/send_support_message_bloc/send_support_message_bloc.dart';
import '../blocs/support_chat_messages_bloc/support_chat_messages_bloc.dart';
import 'chat_message_item.dart';
import 'chat_view_web_top_bar.dart';

class SupportChatViewWeb extends StatelessWidget {
  final int ownId;

  const SupportChatViewWeb({Key? key, required this.ownId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DashboardWebViewWrapper(
      isChildExpanded: true,
      child: Expanded(
        child: Center(
          child: SizedBox(
            width: 800,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: context.appColors.chatPageWebBackgroundColor,
                ),
                child: Column(
                  children: [
                    ChatViewWebTopBar(
                      chatName: 'support_chat'.tr(),
                    ),
                    const Divider(),
                    Expanded(
                      child: BlocConsumer<SupportChatMessagesBloc, SupportChatMessagesState>(
                        listener: (context, state) {
                          checkStateStatusForError(context, state.status);
                        },
                        builder: (context, state) {
                          return InfiniteListPagination(
                            onMaxScrollExtent: () =>
                                context.read<SupportChatMessagesBloc>().add(const SupportChatMessagesEvent.fetch(true)),
                            builder: (context, scrollController) => SizedBox(
                              child: ListView.builder(
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

                                  final isTimeRequired =
                                      index == 0 || !isAtSameMinuteAsNextMessage || !isOwnPreviousMessage;

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
                          );
                        },
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
                    const SupportChatInputWeb()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
