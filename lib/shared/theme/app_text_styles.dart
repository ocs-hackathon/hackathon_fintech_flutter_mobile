import 'package:hackathon_fintech_flutter_mobile/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextThemes with AppTextStyles {
  static TextTheme get lightTextTheme => TextTheme(
        titleLarge: AppTextStyles.titleLarge,
        titleMedium: AppTextStyles.titleMedium,
        titleSmall: AppTextStyles.titleSmall,
        headlineMedium: AppTextStyles.headlineMedium,
        headlineSmall: AppTextStyles.headlineSmall,
        bodyLarge: AppTextStyles.bodyLarge,
        bodyMedium: AppTextStyles.bodyMedium,
        bodySmall: AppTextStyles.bodySmall,
        labelLarge: AppTextStyles.labelLarge,
        labelMedium: AppTextStyles.labelMedium,
        labelSmall: AppTextStyles.labelSmall,
      );

  static TextTheme get currentTextTheme => Get.textTheme;
}

mixin AppTextStyles {
  static TextTheme get _defaultTextTheme => GoogleFonts.interTextTheme();

  static TextStyle titleLarge = _defaultTextTheme.titleLarge!.copyWith(
    fontSize: 43,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryDarkGreyColor,
  );

  static TextStyle titleMedium = _defaultTextTheme.titleMedium!.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w900,
    color: AppColors.primaryDarkGreyColor,
  );

  static TextStyle titleSmall = _defaultTextTheme.titleSmall!.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryDarkGreyColor,
  );

  static TextStyle headlineMedium = _defaultTextTheme.headlineMedium!.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryLightGreyColor,
  );

  static TextStyle headlineSmall = _defaultTextTheme.headlineSmall!.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryLightGreyColor,
  );

  static TextStyle bodyLarge = _defaultTextTheme.bodyLarge!.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryBlackColor,
  );

  static TextStyle bodyMedium = _defaultTextTheme.bodyMedium!.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryBlackColor,
  );

  static TextStyle bodySmall = _defaultTextTheme.bodySmall!.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryBlackColor,
  );

  static TextStyle labelLarge = _defaultTextTheme.labelLarge!.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryDarkGreyColor,
  );

  static TextStyle labelMedium = _defaultTextTheme.labelMedium!.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryWhiteColor,
  );

  static TextStyle labelSmall = _defaultTextTheme.labelSmall!.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryDarkGreyColor,
  );

  static TextStyle titleExtraLarge = _defaultTextTheme.headlineLarge!.copyWith(
    fontSize: 102,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryDarkGreyColor,
    height: 1.2,
  );

  static TextStyle cardTitleLarge = _defaultTextTheme.headlineLarge!.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryDarkGreyColor,
  );

  static TextStyle cardTitleMedium = _defaultTextTheme.headlineMedium!.copyWith(
    fontSize: 17,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryDarkGreyColor,
  );

  static TextStyle cardTitleSmall = _defaultTextTheme.headlineSmall!.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryDarkGreyColor,
  );

  static TextStyle cardBodyLarge = _defaultTextTheme.headlineLarge!.copyWith(
    fontSize: 32,
    fontWeight: FontWeight.w900,
    color: AppColors.primaryDarkGreyColor,
  );

  static TextStyle cardBodyMedium = _defaultTextTheme.headlineMedium!.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryDarkGreyColor,
  );

  static TextStyle cardBodySmall = _defaultTextTheme.headlineSmall!.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryDarkGreyColor,
  );

  static TextStyle formFieldBody = _defaultTextTheme.headlineMedium!.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryBlackColor,
  );

  static TextStyle formFieldLabel = _defaultTextTheme.headlineMedium!.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryDarkGreyColor,
  );

  static TextStyle formFieldHint = _defaultTextTheme.headlineSmall!.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textfieldHintGrey,
  );

  static TextStyle formFieldError = _defaultTextTheme.headlineSmall!.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.red,
  );
}

extension OtherTextStyles on TextTheme {
  TextStyle get hintMedium => GoogleFonts.interTextTheme().bodyMedium!.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryLightGreyColor,
      );

  TextStyle get hintSmall => GoogleFonts.interTextTheme().bodyMedium!.copyWith(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: AppColors.primaryLightGreyColor,
      );
}
