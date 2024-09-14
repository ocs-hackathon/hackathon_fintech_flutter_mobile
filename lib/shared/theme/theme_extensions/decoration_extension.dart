import 'package:hackathon_fintech_flutter_mobile/shared/theme/app_colors.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/app_decoration.dart';
import 'package:flutter/material.dart';

@immutable
class AppDecorationExtension extends ThemeExtension<AppDecorationExtension> {
  final BoxDecoration? mainBackgroundDecoration;
  final BoxDecoration? mainButtonPrimaryDecoration;
  final BoxDecoration? mainButtonSecondaryDecoration;
  final BoxDecoration? flatButtonPrimaryDecoration;
  final BoxDecoration? mainBorderedDecoration;
  final BoxDecoration? cardDecoration;
  final BoxDecoration? lightBorderedDecoration;

  const AppDecorationExtension({
    required this.mainBackgroundDecoration,
    required this.mainButtonPrimaryDecoration,
    required this.mainButtonSecondaryDecoration,
    required this.flatButtonPrimaryDecoration,
    required this.mainBorderedDecoration,
    required this.cardDecoration,
    required this.lightBorderedDecoration,
  });

  @override
  ThemeExtension<AppDecorationExtension> copyWith({
    BoxDecoration? mainBackgroundDecoration,
    BoxDecoration? mainButtonPrimaryDecoration,
    BoxDecoration? mainButtonSecondaryDecoration,
    BoxDecoration? flatButtonPrimaryDecoration,
    BoxDecoration? mainBorderedDecoration,
    BoxDecoration? mainBorderedTextFieldDecoration,
    InputDecoration? linearTextfieldDecoration,
    InputDecoration? mainBorderedTextFieldInputDecoration,
    BoxDecoration? cardDecoration,
    BoxDecoration? lightBorderedDecoration,
  }) {
    return AppDecorationExtension(
      mainBackgroundDecoration:
          mainBackgroundDecoration ?? this.mainBackgroundDecoration!,
      mainButtonPrimaryDecoration:
          mainButtonPrimaryDecoration ?? this.mainButtonPrimaryDecoration!,
      mainButtonSecondaryDecoration:
          mainButtonSecondaryDecoration ?? this.mainButtonSecondaryDecoration!,
      flatButtonPrimaryDecoration:
          flatButtonPrimaryDecoration ?? this.flatButtonPrimaryDecoration!,
      mainBorderedDecoration:
          mainBorderedDecoration ?? this.mainBorderedDecoration!,
      cardDecoration: cardDecoration ?? this.cardDecoration!,
      lightBorderedDecoration:
          lightBorderedDecoration ?? this.lightBorderedDecoration!,
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
      mainButtonSecondaryDecoration: BoxDecoration.lerp(
          mainButtonSecondaryDecoration,
          other.mainButtonSecondaryDecoration,
          t),
      flatButtonPrimaryDecoration: BoxDecoration.lerp(
          flatButtonPrimaryDecoration, other.flatButtonPrimaryDecoration, t),
      mainBorderedDecoration: BoxDecoration.lerp(
          mainBorderedDecoration, other.mainBorderedDecoration, t),
      cardDecoration:
          BoxDecoration.lerp(cardDecoration, other.cardDecoration, t),
      lightBorderedDecoration: BoxDecoration.lerp(
          lightBorderedDecoration, other.lightBorderedDecoration, t),
    );
  }

  static AppDecorationExtension light = AppDecorationExtension(
    mainBackgroundDecoration: AppDecoration.mainBackgroundDecoration,
    mainButtonPrimaryDecoration: AppDecoration.mainButtonPrimaryDecoration,
    mainButtonSecondaryDecoration: AppDecoration.mainButtonSecondaryDecoration,
    flatButtonPrimaryDecoration: AppDecoration.flatButtonPrimaryDecoration,
    mainBorderedDecoration: AppDecoration.mainBorderedDecoration,
    cardDecoration: AppDecoration.cardDecoration,
    lightBorderedDecoration: AppDecoration.lightBorderedDecoration,
  );

  static AppDecorationExtension dark = AppDecorationExtension(
    mainBackgroundDecoration: AppDecoration.mainBackgroundDecoration
        .copyWith(gradient: AppColors.primaryGradient),
    mainButtonPrimaryDecoration: AppDecoration.mainButtonPrimaryDecoration
        .copyWith(color: AppColors.primaryDarkGreyColor),
    mainButtonSecondaryDecoration: AppDecoration.mainButtonSecondaryDecoration
        .copyWith(color: AppColors.primaryWhiteColor),
    flatButtonPrimaryDecoration: AppDecoration.flatButtonPrimaryDecoration
        .copyWith(color: AppColors.primaryDarkGreyColor),
    mainBorderedDecoration: AppDecoration.mainBorderedDecoration.copyWith(
        color: AppColors.primaryDarkGreyColor,
        border: Border.all(color: AppColors.primaryWhiteColor)),
    cardDecoration: AppDecoration.cardDecoration.copyWith(
      color: AppColors.primaryDarkGreyColor,
    ),
    lightBorderedDecoration: AppDecoration.lightBorderedDecoration.copyWith(
      color: AppColors.primaryDarkGreyColor,
      border: Border.all(color: AppColors.primaryWhiteColor, width: 0.5),
    ),
  );
}
