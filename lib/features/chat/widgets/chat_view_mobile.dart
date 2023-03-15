import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/common/utils/extention_on_date.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/utils/infinite_list_pagination.dart';
import 'package:flyday_broker/features/chat/models/chat_info.dart';

import '../../../common/utils/check_state_status.dart';
import '../blocs/chat_info_bloc/chat_info_bloc.dart';
import '../blocs/chat_messages_bloc/chat_messages_bloc.dart';
import '../blocs/send_text_message_bloc/send_message_bloc.dart';
import 'chat_input_mobile.dart';
import 'chat_message_item.dart';
// import 'chat_restricted.dart';

class ChatViewMobile extends StatelessWidget {
  final int ownId;
  const ChatViewMobile({Key? key, required this.ownId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.chatPageMobileBackgroundColor,
      appBar: AppBar(
        elevation: 1,
        title: BlocSelector<ChatInfoBloc, ChatInfoState, ChatInfo?>(
          selector: (state) {
            return state.selectedChat;
          },
          builder: (context, chatInfo) {
            if (chatInfo != null) {
              return Text(chatInfo.customer.firstNameAndLastName);
            }
            return Container();
          },
        ),
      ),
      body: BlocConsumer<ChatMessagesBloc, ChatMessagesState>(
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
                    onMaxScrollExtent: () => context.read<ChatMessagesBloc>().add(const ChatMessagesEvent.fetch(true)),
                    builder: (context, scrollController) => ListView.builder(
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
                      return const ChatInputMobile();
                    } else {
                      return const ChatInputMobile();
                      // return const ChatRestricted();
                    }
                  }
                  return const LinearProgressIndicator();
                },
              ),
              // const ChatInputMobile(),
            ],
          );
        },
      ),
    );
  }
}
