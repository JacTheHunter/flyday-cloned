import 'package:bloc/bloc.dart';

class AppOverlaysCubit extends Cubit<AppOverlayType> {
  AppOverlaysCubit() : super(AppOverlayType.none);

  void setType(AppOverlayType type) => emit(type);
}

enum AppOverlayType {
  none,
  collapsedMenu,
  profileMenu,
  notificationsMenu,
}
