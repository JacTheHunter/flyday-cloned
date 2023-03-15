import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/features/chat/data_sources/chat_api_client.dart';
import 'package:flyday_broker/features/chat/repositories/chat_repository.dart';
import 'package:flyday_broker/features/chat/widgets/support_chat_notifications_listener.dart';

import '../../../common/services/api_serice.dart';
import '../../../common/utils/platform.dart';
import '../blocs/send_support_message_bloc/send_support_message_bloc.dart';
import '../blocs/support_chat_messages_bloc/support_chat_messages_bloc.dart';
import '../repositories/i_chat_repository.dart';
import '../widgets/support_chat_view_mobile.dart';
import '../widgets/support_chat_view_web.dart';

class SupportChatPage extends StatelessWidget implements AutoRouteWrapper {
  final int ownId;
  const SupportChatPage({Key? key, required this.ownId}) : super(key: key);
  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => ChatApiClient(context.read<ApiService>().dio),
        ),
      ],
      child: Builder(
        builder: (context) {
          return MultiRepositoryProvider(
            providers: [
              RepositoryProvider<IChatRepository>(
                create: (context) => ChatRepository(apiClient: context.read()),
              ),
            ],
            child: Builder(
              builder: (context) {
                return MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => SupportChatMessagesBloc(
                        repository: context.read(),
                      )..add(
                          const SupportChatMessagesEvent.fetch(),
                        ),
                    ),
                    BlocProvider(
                      create: (context) => SendSupportMessageBloc(
                        supportChatMessagesBloc: context.read(),
                        repository: context.read(),
                      ),
                    ),
                  ],
                  child: this,
                );
              },
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SupportChatNotificationsListener(
      child: isWebMobileOrMobile
          ? SupportChatViewMobile(
              ownId: ownId,
            )
          : SupportChatViewWeb(
              ownId: ownId,
            ),
    );
  }
}
