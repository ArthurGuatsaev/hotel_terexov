// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_constant.dart';

// **************************************************************************
// ThemeTextGenerator
// **************************************************************************

class $MyThemeText extends ThemeExtension<$MyThemeText> {
  final TextStyle subtitle;
  final TextStyle important;
  $MyThemeText({
    required this.subtitle,
    required this.important,
  });
  @override
  ThemeExtension<$MyThemeText> copyWith({
    TextStyle? subtitle,
    TextStyle? important,
  }) {
    return $MyThemeText(
      subtitle: subtitle ?? this.subtitle,
      important: important ?? this.important,
    );
  }

  @override
  ThemeExtension<$MyThemeText> lerp(
    ThemeExtension<$MyThemeText>? other,
    double t,
  ) {
    if (other is! $MyThemeText) {
      return this;
    }
    return $MyThemeText(
      subtitle: TextStyle.lerp(subtitle, other.subtitle, t)!,
      important: TextStyle.lerp(important, other.important, t)!,
    );
  }

  static get light => $MyThemeText(
        subtitle: AppTextStyle.subtitle,
        important: AppTextStyle.important,
      );
  static get dark => $MyThemeText(
        subtitle: AppTextStyle.subtitle,
        important: AppTextStyle.important,
      );
}
