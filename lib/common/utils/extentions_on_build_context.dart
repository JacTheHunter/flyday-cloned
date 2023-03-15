import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../config/theme/app_colors.dart';
import '../../config/theme/app_text_theme.dart';
import '../blocs/app_theme_cubit/app_theme_cubit.dart';

extension AppTheme on BuildContext {
  AppColors get appColors => read<AppThemeCubit>().state.appColors;
  AppTextTheme get appTextTheme => read<AppThemeCubit>().state.textTheme;
  double get sizeHeight => MediaQuery.of(this).size.height;
  double get sizeWidth => MediaQuery.of(this).size.width;
}
