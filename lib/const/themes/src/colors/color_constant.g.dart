// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_constant.dart';

// **************************************************************************
// ThemeColorGenerator
// **************************************************************************

class $MyThemeColor extends ThemeExtension<$MyThemeColor> {
  final Color bg;
  final Color appbar;
  final Color buttons;
  final Color primary;
  final Color activeButton;
  final Color textColor;
  final Color textSubtitleColor;
  $MyThemeColor({
    required this.bg,
    required this.appbar,
    required this.buttons,
    required this.primary,
    required this.activeButton,
    required this.textColor,
    required this.textSubtitleColor,
  });
  @override
  ThemeExtension<$MyThemeColor> copyWith({
    Color? bg,
    Color? appbar,
    Color? buttons,
    Color? primary,
    Color? activeButton,
    Color? textColor,
    Color? textSubtitleColor,
  }) {
    return $MyThemeColor(
      bg: bg ?? this.bg,
      appbar: appbar ?? this.appbar,
      buttons: buttons ?? this.buttons,
      primary: primary ?? this.primary,
      activeButton: activeButton ?? this.activeButton,
      textColor: textColor ?? this.textColor,
      textSubtitleColor: textSubtitleColor ?? this.textSubtitleColor,
    );
  }

  @override
  ThemeExtension<$MyThemeColor> lerp(
    ThemeExtension<$MyThemeColor>? other,
    double t,
  ) {
    if (other is! $MyThemeColor) {
      return this;
    }
    return $MyThemeColor(
      bg: Color.lerp(bg, other.bg, t)!,
      appbar: Color.lerp(appbar, other.appbar, t)!,
      buttons: Color.lerp(buttons, other.buttons, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      activeButton: Color.lerp(activeButton, other.activeButton, t)!,
      textColor: Color.lerp(textColor, other.textColor, t)!,
      textSubtitleColor:
          Color.lerp(textSubtitleColor, other.textSubtitleColor, t)!,
    );
  }

  static get light => $MyThemeColor(
        bg: AppColors.bg,
        appbar: AppColors.appbar,
        buttons: AppColors.buttons,
        primary: AppColors.primary,
        activeButton: AppColors.activeButton,
        textColor: AppColors.textColor,
        textSubtitleColor: AppColors.textSubtitleColor,
      );
  static get dark => $MyThemeColor(
        bg: AppColors.bg,
        appbar: AppColors.appbar,
        buttons: AppColors.buttons,
        primary: AppColors.primary,
        activeButton: AppColors.activeButton,
        textColor: AppColors.textColor,
        textSubtitleColor: AppColors.textSubtitleColor,
      );
}
