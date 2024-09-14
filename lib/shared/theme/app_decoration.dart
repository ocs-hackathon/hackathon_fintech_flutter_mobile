import 'package:hackathon_fintech_flutter_mobile/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppDecoration {
  static BoxDecoration mainBackgroundDecoration = BoxDecoration(
    gradient: AppColors.primaryGradient,
  );
  static BoxDecoration mainButtonPrimaryDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.primaryWhiteColor,
      boxShadow: [
        BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 0,
            color: AppColors.primaryBlackColor.withOpacity(0.25))
      ]);

  static BoxDecoration mainButtonSecondaryDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: AppColors.primaryDarkGreyColor,
  );

  static BoxDecoration mainBorderedDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    border: Border.all(
      color: AppColors.primaryDarkGreyColor,
    ),
    color: AppColors.primaryWhiteColor,
  );

  static BoxDecoration lightBorderedDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    border: Border.all(
      color: AppColors.secondaryLightGreyColor,
      width: 0.5,
    ),
    color: AppColors.primaryWhiteColor,
  );

  static BoxDecoration gradientTabIndicator = BoxDecoration(
    borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
    gradient: LinearGradient(
      colors: [AppColors.primaryColor, AppColors.secondaryColor],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ),
  );

  static BoxDecoration cardDecoration = BoxDecoration(
      color: AppColors.primaryWhiteColor,
      boxShadow: [
        BoxShadow(
            blurRadius: 20,
            offset: const Offset(-2, -2),
            color: AppColors.primaryBlackColor.withOpacity(0.1)),
      ],
      borderRadius: BorderRadius.circular(10));

  static BoxDecoration mainBorderedTextFieldDecoration = BoxDecoration(
    color: AppColors.primaryWhiteColor.withOpacity(0.7),
    borderRadius: const BorderRadius.all(
      Radius.circular(15),
    ),
  );

  static BoxDecoration flatButtonPrimaryDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(6),
    border: Border.all(color: AppColors.primaryDarkGreyColor),
  );

  static BoxDecoration productCardDecoration = const BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
  );

  static BoxDecoration productCardIconBoxDecoration = BoxDecoration(
    color: AppColors.primaryColor,
    borderRadius: const BorderRadius.all(
      Radius.circular(7),
    ),
  );

  static InputDecoration linearTextfieldDecoration = const InputDecoration(
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(style: BorderStyle.solid),
        borderRadius: BorderRadius.all(Radius.circular(10))),
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
