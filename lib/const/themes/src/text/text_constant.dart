import 'package:flutter/material.dart';
// import 'package:theme_code_gen/theme_code_gen.dart';

import '../colors/color_constant.dart';

part 'text_constant.g.dart';

// @text_anotation
abstract class AppTextStyle {
  static TextStyle subtitle = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    color: AppColors.textSubtitleColor,
  );
  static TextStyle important = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w300,
    color: AppColors.primary,
  );
}
