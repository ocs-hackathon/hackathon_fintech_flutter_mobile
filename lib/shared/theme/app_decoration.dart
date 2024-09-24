import 'package:hackathon_fintech_flutter_mobile/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppDecoration {
  static BoxDecoration mainBackgroundDecoration = const BoxDecoration(
    color: AppColors.primaryWhiteColor,
  );
  static BoxDecoration mainButtonPrimaryDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: AppColors.primaryLightGreyColor,
      boxShadow: [
        BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 0,
            color: AppColors.primaryBlackColor.withOpacity(0.25))
      ]);
  static BoxDecoration cardDecoration = BoxDecoration(
      color: AppColors.primaryDarkGreyColor,
      borderRadius: BorderRadius.circular(10));
  static BoxDecoration lightCardDecoration = BoxDecoration(
    color: AppColors.primaryLightGreyColor.withOpacity(0.1),
    border: Border.all(color: AppColors.primaryBlackColor),
    borderRadius: const BorderRadius.all(
      Radius.circular(10),
    ),
  );

  static BoxDecoration mainBorderedTextFieldDecoration = BoxDecoration(
    color: AppColors.primaryLightGreyColor.withOpacity(0.1),
    border: Border.all(color: AppColors.primaryBlackColor),
    borderRadius: const BorderRadius.all(
      Radius.circular(50),
    ),
  );
  static InputDecoration mainBorderedTextFieldInputDecoration =
      const InputDecoration(
    errorStyle: TextStyle(
      fontSize: 0,
    ),
    errorMaxLines: 1,
    border: InputBorder.none,
  );
}
