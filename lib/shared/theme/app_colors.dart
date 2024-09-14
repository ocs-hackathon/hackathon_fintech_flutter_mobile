import 'package:flutter/material.dart';

class AppColors {
  // primarly used for gradients
  static Color primaryColor = const Color(0xFF00FF66).withOpacity(0.4);
  static const Color secondaryColor = Color(0xFF05A2E6);

  // main black color used in e.g description texts
  static const Color primaryBlackColor = Color(0xFF000000);

  // main white color used in e.g main styles/themes in a darker backgrounds
  static const Color primaryWhiteColor = Color(0xFFFFFFFF);

  // dark grey used in e.g buttons
  static const Color primaryDarkGreyColor = Color(0xFF282E3F);

  // light grey used in e.g light description texts
  static const Color primaryLightGreyColor = Color(0xFF858C94);

  // secondary light grey used in e.g background/disabled sections
  static const Color secondaryLightGreyColor = Color(0xFFE6E6E6);

  // light grey used in e.g textfield's border
  static Color textfieldHintGrey = const Color(0xFFB2B2B2);

  // Gradients

  static LinearGradient primaryGradient = LinearGradient(
    colors: [primaryColor, secondaryColor],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
