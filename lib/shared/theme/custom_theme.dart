import 'package:hackathon_fintech_flutter_mobile/shared/theme/app_colors.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/app_text_styles.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/theme_extensions/decoration_extension.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/theme_extensions/form_field_styles.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/theme_extensions/loan_product_card_decoration.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  ThemeData get lightTheme => ThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: AppColors.primaryWhiteColor,
          textTheme: AppTextThemes.lightTextTheme,
          iconTheme: const IconThemeData(color: AppColors.primaryDarkGreyColor),
          extensions: <ThemeExtension<dynamic>>[
            AppDecorationExtension.light,
            LoanProductCardDecorationExtension.light,
            FormFieldStylesExtenstion.light,
          ]);

  ThemeData get darkTheme => ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: AppColors.primaryDarkGreyColor,
          textTheme: AppTextThemes.darkTextTheme,
          iconTheme: const IconThemeData(color: AppColors.primaryWhiteColor),
          extensions: <ThemeExtension<dynamic>>[
            AppDecorationExtension.dark,
            LoanProductCardDecorationExtension.dark,
            FormFieldStylesExtenstion.dark,
          ]);
}
