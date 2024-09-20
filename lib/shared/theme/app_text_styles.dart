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

  static TextTheme get darkTextTheme => TextTheme(
        titleLarge: AppTextStyles.titleLarge
            .copyWith(color: AppColors.primaryWhiteColor),
        titleMedium: AppTextStyles.titleMedium
            .copyWith(color: AppColors.primaryWhiteColor),
        titleSmall: AppTextStyles.titleSmall
            .copyWith(color: AppColors.primaryWhiteColor),
        headlineMedium: AppTextStyles.headlineMedium
            .copyWith(color: AppColors.primaryWhiteColor),
        headlineSmall: AppTextStyles.headlineSmall
            .copyWith(color: AppColors.primaryWhiteColor),
        bodyLarge: AppTextStyles.bodyLarge
            .copyWith(color: AppColors.primaryWhiteColor),
        bodyMedium: AppTextStyles.bodyMedium
            .copyWith(color: AppColors.primaryWhiteColor),
        bodySmall: AppTextStyles.bodySmall
            .copyWith(color: AppColors.primaryWhiteColor),
        labelMedium: AppTextStyles.labelMedium
            .copyWith(color: AppColors.primaryWhiteColor),
        labelLarge: AppTextStyles.labelLarge
            .copyWith(color: AppColors.primaryWhiteColor),
        labelSmall: AppTextStyles.labelSmall
            .copyWith(color: AppColors.primaryWhiteColor),
      );

  static TextTheme get currentTextTheme => Get.textTheme;
}

mixin AppTextStyles {
  static TextTheme get _defaultTextTheme => GoogleFonts.poppinsTextTheme();
  static TextTheme get _secondaryTextTheme => GoogleFonts.poppinsTextTheme();

  /* The following text styles are those bound to be directly linked with Flutter's 
  Material Text Theme. They are meant to override the default styles found in
  the TextTheme class. Extra text styles are declared later on within this class
  */

  // light title e.g "Welcome to"
  static TextStyle titleLarge = _defaultTextTheme.titleLarge!.copyWith(
    fontSize: 43,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryDarkGreyColor,
  );

  // bold title with smaller font size e.g "Apply Online"
  static TextStyle titleMedium = _defaultTextTheme.titleMedium!.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w900,
    color: AppColors.primaryDarkGreyColor,
  );

  // light thin title e.g "Available Products"
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

  // main body text
  static TextStyle bodyLarge = _defaultTextTheme.bodyLarge!.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryBlackColor,
  );

  static TextStyle bodyMedium = _secondaryTextTheme.bodyMedium!.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryBlackColor,
  );

  static TextStyle bodySmall = _defaultTextTheme.bodySmall!.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryBlackColor,
  );

  // bold button text style
  static TextStyle labelLarge = _defaultTextTheme.labelLarge!.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryWhiteColor,
  );

  // medium button text style
  static TextStyle labelMedium = _defaultTextTheme.labelMedium!.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryWhiteColor,
  );

  // light text button text style
  static TextStyle labelSmall = _defaultTextTheme.labelSmall!.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryWhiteColor,
  );

  // extra text styles

  // large app name style
  static TextStyle titleExtraLarge = _defaultTextTheme.headlineLarge!.copyWith(
    fontSize: 102,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryDarkGreyColor,
    height: 1.2,
  );

  // card text styles used in the loan product card
  static TextStyle cardTitleLarge = _defaultTextTheme.headlineLarge!.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryWhiteColor,
  );

  static TextStyle cardTitleMedium = _defaultTextTheme.headlineMedium!.copyWith(
    fontSize: 17,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryWhiteColor,
  );

  static TextStyle cardTitleSmall = _defaultTextTheme.headlineSmall!.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryWhiteColor,
  );

  static TextStyle cardBodyLarge = _defaultTextTheme.headlineLarge!.copyWith(
    fontSize: 32,
    fontWeight: FontWeight.w900,
    color: AppColors.primaryWhiteColor,
  );

  static TextStyle cardBodyMedium = _defaultTextTheme.headlineMedium!.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryWhiteColor,
  );

  static TextStyle cardBodySmall = _defaultTextTheme.headlineSmall!.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryWhiteColor,
  );

  // form field text styles
  static TextStyle formFieldBody = _secondaryTextTheme.headlineMedium!.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryBlackColor,
  );

  static TextStyle formFieldLabel =
      _secondaryTextTheme.headlineMedium!.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryDarkGreyColor,
  );

  static TextStyle formFieldHint = _secondaryTextTheme.headlineSmall!.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textfieldHintGrey,
  );

  static TextStyle formFieldError = _secondaryTextTheme.headlineSmall!.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.red,
  );
}

extension OtherTextStyles on TextTheme {
  // hint text style
  TextStyle get hintMedium =>
      GoogleFonts.redHatDisplayTextTheme().bodyMedium!.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.primaryLightGreyColor,
          );

  TextStyle get hintSmall =>
      GoogleFonts.redHatDisplayTextTheme().bodyMedium!.copyWith(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: AppColors.primaryLightGreyColor,
          );
}
