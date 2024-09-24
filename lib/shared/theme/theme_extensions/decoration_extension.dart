import 'package:flutter/material.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/app_decoration.dart';

@immutable
class AppDecorationExtension extends ThemeExtension<AppDecorationExtension> {
  final BoxDecoration? mainBackgroundDecoration;
  final BoxDecoration? mainButtonPrimaryDecoration;

  final BoxDecoration? cardDecoration;
  final BoxDecoration? lightCardDecoration;

  const AppDecorationExtension({
    required this.mainBackgroundDecoration,
    required this.mainButtonPrimaryDecoration,
    required this.cardDecoration,
    required this.lightCardDecoration,
  });

  @override
  ThemeExtension<AppDecorationExtension> copyWith({
    BoxDecoration? mainBackgroundDecoration,
    BoxDecoration? mainButtonPrimaryDecoration,
    BoxDecoration? mainBorderedTextFieldDecoration,
    InputDecoration? linearTextfieldDecoration,
    InputDecoration? mainBorderedTextFieldInputDecoration,
    BoxDecoration? cardDecoration,
    BoxDecoration? lightCardDecoration,
  }) {
    return AppDecorationExtension(
      mainBackgroundDecoration:
          mainBackgroundDecoration ?? this.mainBackgroundDecoration!,
      mainButtonPrimaryDecoration:
          mainButtonPrimaryDecoration ?? this.mainButtonPrimaryDecoration!,
      cardDecoration: cardDecoration ?? this.cardDecoration!,
      lightCardDecoration: lightCardDecoration ?? this.lightCardDecoration,
    );
  }

  @override
  ThemeExtension<AppDecorationExtension> lerp(
      covariant ThemeExtension<AppDecorationExtension>? other, double t) {
    if (other is! AppDecorationExtension) return this;

    return AppDecorationExtension(
      mainBackgroundDecoration: BoxDecoration.lerp(
          mainBackgroundDecoration, other.mainBackgroundDecoration, t),
      mainButtonPrimaryDecoration: BoxDecoration.lerp(
          mainButtonPrimaryDecoration, other.mainButtonPrimaryDecoration, t),
      cardDecoration:
          BoxDecoration.lerp(cardDecoration, other.cardDecoration, t),
      lightCardDecoration:
          BoxDecoration.lerp(lightCardDecoration, other.lightCardDecoration, t),
    );
  }

  static AppDecorationExtension light = AppDecorationExtension(
    mainBackgroundDecoration: AppDecoration.mainBackgroundDecoration,
    mainButtonPrimaryDecoration: AppDecoration.mainButtonPrimaryDecoration,
    cardDecoration: AppDecoration.cardDecoration,
    lightCardDecoration: AppDecoration.lightCardDecoration,
  );
}
