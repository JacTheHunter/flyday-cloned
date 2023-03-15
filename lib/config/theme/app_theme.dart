import 'app_colors.dart';
import 'app_text_theme.dart';

abstract class AppTheme {
  AppTextTheme get textTheme;
  AppColors get appColors;
  String get fontFamily;
}
