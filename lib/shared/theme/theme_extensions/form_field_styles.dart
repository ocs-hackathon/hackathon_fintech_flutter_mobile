import 'package:hackathon_fintech_flutter_mobile/shared/theme/app_colors.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/app_decoration.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class FormFieldStylesExtenstion
    extends ThemeExtension<FormFieldStylesExtenstion> {
  final InputDecoration? linearTextfieldDecoration;
  final InputDecoration? mainBorderedTextFieldInputDecoration;
  final BoxDecoration? mainBorderedTextFieldDecoration;
  final TextStyle? labelStyle;
  final TextStyle? bodyStyle;
  final TextStyle? errorStyle;
  final TextStyle? hintStyle;

  const FormFieldStylesExtenstion({
    required this.linearTextfieldDecoration,
    required this.mainBorderedTextFieldInputDecoration,
    required this.mainBorderedTextFieldDecoration,
    required this.labelStyle,
    required this.bodyStyle,
    required this.errorStyle,
    required this.hintStyle,
  });
  @override
  ThemeExtension<FormFieldStylesExtenstion> copyWith({
    InputDecoration? linearTextfieldDecoration,
    InputDecoration? mainBorderedTextFieldInputDecoration,
    BoxDecoration? mainBorderedTextFieldDecoration,
    TextStyle? labelStyle,
    TextStyle? bodyStyle,
    TextStyle? errorStyle,
    TextStyle? hintStyle,
  }) {
    return FormFieldStylesExtenstion(
      linearTextfieldDecoration:
          linearTextfieldDecoration ?? this.linearTextfieldDecoration!,
      mainBorderedTextFieldInputDecoration:
          mainBorderedTextFieldInputDecoration ??
              this.mainBorderedTextFieldInputDecoration!,
      mainBorderedTextFieldDecoration: mainBorderedTextFieldDecoration ??
          this.mainBorderedTextFieldDecoration!,
      labelStyle: labelStyle ?? this.labelStyle!,
      bodyStyle: bodyStyle ?? this.bodyStyle!,
      errorStyle: errorStyle ?? this.errorStyle!,
      hintStyle: hintStyle ?? this.hintStyle!,
    );
  }

  @override
  ThemeExtension<FormFieldStylesExtenstion> lerp(
      covariant ThemeExtension<FormFieldStylesExtenstion>? other, double t) {
    if (other is! FormFieldStylesExtenstion) return this;

    return FormFieldStylesExtenstion(
      linearTextfieldDecoration: other.linearTextfieldDecoration,
      mainBorderedTextFieldInputDecoration:
          other.mainBorderedTextFieldInputDecoration,
      mainBorderedTextFieldDecoration: BoxDecoration.lerp(
          mainBorderedTextFieldDecoration,
          other.mainBorderedTextFieldDecoration,
          t),
      labelStyle: TextStyle.lerp(labelStyle, other.labelStyle, t),
      bodyStyle: TextStyle.lerp(bodyStyle, other.bodyStyle, t),
      errorStyle: TextStyle.lerp(errorStyle, other.errorStyle, t),
      hintStyle: TextStyle.lerp(hintStyle, other.hintStyle, t),
    );
  }

  static FormFieldStylesExtenstion light = FormFieldStylesExtenstion(
    linearTextfieldDecoration: AppDecoration.linearTextfieldDecoration,
    mainBorderedTextFieldInputDecoration: AppDecoration
        .mainBorderedTextFieldInputDecoration
        .copyWith(hintStyle: AppTextStyles.formFieldHint),
    mainBorderedTextFieldDecoration:
        AppDecoration.mainBorderedTextFieldDecoration,
    labelStyle: AppTextStyles.formFieldLabel,
    bodyStyle: AppTextStyles.formFieldBody,
    errorStyle: AppTextStyles.formFieldError,
    hintStyle: AppTextStyles.formFieldHint,
  );

  static FormFieldStylesExtenstion dark = FormFieldStylesExtenstion(
      mainBorderedTextFieldDecoration: AppDecoration
          .mainBorderedTextFieldDecoration
          .copyWith(color: AppColors.primaryDarkGreyColor),
      mainBorderedTextFieldInputDecoration:
          AppDecoration.mainBorderedTextFieldInputDecoration,
      linearTextfieldDecoration:
          AppDecoration.linearTextfieldDecoration.copyWith(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primaryWhiteColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
      ),
      labelStyle: AppTextStyles.formFieldLabel
          .copyWith(color: AppColors.primaryWhiteColor),
      bodyStyle: AppTextStyles.formFieldBody.copyWith(
        color: AppColors.primaryWhiteColor,
      ),
      errorStyle: AppTextStyles.formFieldError,
      hintStyle: AppTextStyles.formFieldHint);
}
