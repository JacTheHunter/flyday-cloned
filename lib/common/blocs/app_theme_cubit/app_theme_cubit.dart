import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/theme/app_theme.dart';
import '../../../config/theme/app_themes/default/default_app_theme.dart';

class AppThemeCubit extends Cubit<AppTheme> {
  AppThemeCubit() : super(DefaultAppTheme());
}
