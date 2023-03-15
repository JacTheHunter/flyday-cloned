import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extention_on_date.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

import '../../../common/models/state_status.dart';
import '../../../common/utils/check_state_status.dart';
import '../../../common/utils/infinite_list_pagination.dart';
import '../../../common/widgets/dashboard_web_view_wrapper.dart';
import '../blocs/chat_info_bloc/chat_info_bloc.dart';
import '../blocs/chat_messages_bloc/chat_messages_bloc.dart';
import '../blocs/send_text_message_bloc/send_message_bloc.dart';
import '../models/chat_info.dart';
import 'chat_input_web.dart';
import 'chat_message_item.dart';
import 'chat_view_web_top_bar.dart';

class ChatViewWeb extends StatelessWidget {
  final int ownId;

  const ChatViewWeb({Key? key, required this.ownId}) : super(key: key);

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
                    BlocSelector<ChatInfoBloc, ChatInfoState, ChatInfo?>(
                      selector: (state) {
                        return state.selectedChat;
                      },
                      builder: (context, chatInfo) {
                        if (chatInfo != null) {
                          return ChatViewWebTopBar(
                            chatName: chatInfo.customer.firstNameAndLastName,
                          );
                        }
                        return Container();
                      },
                    ),
                    const Divider(),
                    Expanded(
                      child: BlocConsumer<ChatMessagesBloc, ChatMessagesState>(
                        listener: (context, state) {
                          checkStateStatusForError(context, state.status);
                        },
                        builder: (context, state) {
                          return InfiniteListPagination(
                            onMaxScrollExtent: () =>
                                context.read<ChatMessagesBloc>().add(const ChatMessagesEvent.fetch(true)),
                            builder: (context, scrollController) => SizedBox(
                              child: ListView.builder(
                                controller: scrollController,
                                reverse: true,
                                itemCount: state.messages.length,
                                itemBuilder: (context, index) {
                                  final message = state.messages[index];

                                  final isOwn = message.author?.id == ownId;

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
                    BlocSelector<SendMessageBloc, SendMessageState, bool>(
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
                    BlocSelector<ChatInfoBloc, ChatInfoState, ChatInfo?>(
                      selector: (state) {
                        return state.selectedChat;
                      },
                      builder: (context, chatInfo) {
                        if (chatInfo != null) {
                          if (chatInfo.canWrite) {
                            return const ChatInputWeb();
                          } else {
                            return const ChatInputWeb();
                            // return const ChatRestricted();
                          }
                        }
                        return const LinearProgressIndicator();
                      },
                    ),
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
