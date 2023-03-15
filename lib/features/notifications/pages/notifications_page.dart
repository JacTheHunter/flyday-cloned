import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/common/utils/check_state_status.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/utils/infinite_list_pagination.dart';
import 'package:flyday_broker/common/utils/platform.dart';
import 'package:flyday_broker/features/notifications/data_sources/notifications_api_client.dart';
import 'package:flyday_broker/features/notifications/repositories/notifications_repository.dart';
import 'package:flyday_broker/gen/assets.gen.dart';

import '../../../common/blocs/cubit/app_overlays_cubit.dart';
import '../../../common/services/api_serice.dart';
import '../blocs/notifications_bloc/notifications_bloc.dart';
import '../repositories/i_notifications_repository.dart';
import '../widgets/notification_item.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => NotificationsApiClient(context.read<ApiService>().dio),
        ),
        RepositoryProvider<INotificationsRepository>(
          create: (context) => NotificationsRepository(
            apiClient: context.read(),
          ),
        ),
      ],
      child: Builder(builder: (context) {
        return BlocProvider(
          create: (context) => NotificationsBloc(repository: context.read())..add(const NotificationsEvent.fetch()),
          child: Scaffold(
            appBar: AppBar(
              title: Text('notifications'.tr()),
              elevation: 1,
              backgroundColor: context.appColors.appBarAuthenticationBackgroundColor,
              automaticallyImplyLeading: !isWebDesktop,
              centerTitle: !isWebDesktop,
              actions: [
                if (isWebDesktop)
                  IconButton(
                      onPressed: () {
                        if (context.read<AppOverlaysCubit>().state != AppOverlayType.none) {
                          context.read<AppOverlaysCubit>().setType(AppOverlayType.none);
                        }
                      },
                      icon: const Icon(Icons.close))
              ],
            ),
            body: BlocConsumer<NotificationsBloc, NotificationsState>(
              listener: (context, state) {
                checkStateStatusForError(context, state.status);
              },
              builder: (context, state) {
                if (state.notifications.isEmpty && state.status is! LoadingStatus) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      Assets.images.raster.emptyNotifications.image(width: double.infinity),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        'you_dont_have_notifications'.tr(),
                        style: context.appTextTheme.emptyNotificationsTextStyle,
                      )
                    ],
                  );
                }
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: InfiniteListPagination(
                    onMaxScrollExtent: () =>
                        context.read<NotificationsBloc>().add(const NotificationsEvent.fetch(true)),
                    builder: (context, scrollController) => ListView.builder(
                      controller: scrollController,
                      itemCount: state.notifications.length + 1,
                      itemBuilder: (context, index) => index == state.notifications.length
                          ? state.status is LoadingStatus
                              ? const Center(child: CircularProgressIndicator())
                              : const SizedBox.shrink()
                          : NotificationItem(
                              item: state.notifications[index],
                            ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      }),
    );
  }
}
