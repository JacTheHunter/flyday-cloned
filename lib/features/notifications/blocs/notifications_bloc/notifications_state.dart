part of 'notifications_bloc.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState({
    @Default(StateStatus()) StateStatus status,
    @Default([]) List<Notification> notifications,
  }) = _NotificationsState;
}
