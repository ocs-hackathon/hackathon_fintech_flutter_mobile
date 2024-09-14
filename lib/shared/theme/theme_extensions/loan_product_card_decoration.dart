import 'package:hackathon_fintech_flutter_mobile/shared/theme/app_decoration.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

@immutable
class LoanProductCardDecorationExtension
    extends ThemeExtension<LoanProductCardDecorationExtension> {
  final BoxDecoration? productCardDecoration;
  final BoxDecoration? productCardIconBoxDecoration;
  final TextStyle? cardTitleLarge;
  final TextStyle? cardTitleMedium;
  final TextStyle? cardTitleSmall;
  final TextStyle? cardBodyLarge;
  final TextStyle? cardBodyMedium;
  final TextStyle? cardBodySmall;

  const LoanProductCardDecorationExtension({
    required this.productCardDecoration,
    required this.productCardIconBoxDecoration,
    required this.cardTitleLarge,
    required this.cardTitleMedium,
    required this.cardTitleSmall,
    required this.cardBodyLarge,
    required this.cardBodyMedium,
    required this.cardBodySmall,
  });

  @override
  ThemeExtension<LoanProductCardDecorationExtension> copyWith({
    BoxDecoration? productCardDecoration,
    BoxDecoration? productCardIconBoxDecoration,
    TextStyle? cardTitleLarge,
    TextStyle? cardTitleMedium,
    TextStyle? cardTitleSmall,
    TextStyle? cardBodyLarge,
    TextStyle? cardBodyMedium,
    TextStyle? cardBodySmall,
  }) {
    return LoanProductCardDecorationExtension(
      productCardDecoration:
          productCardDecoration ?? this.productCardDecoration!,
      productCardIconBoxDecoration:
          productCardIconBoxDecoration ?? this.productCardIconBoxDecoration!,
      cardTitleLarge: cardTitleLarge ?? this.cardTitleLarge!,
      cardTitleMedium: cardTitleMedium ?? this.cardTitleMedium!,
      cardTitleSmall: cardTitleSmall ?? this.cardTitleSmall!,
      cardBodyLarge: cardBodyLarge ?? this.cardBodyLarge!,
      cardBodyMedium: cardBodyMedium ?? this.cardBodyMedium!,
      cardBodySmall: cardBodySmall ?? this.cardBodySmall!,
    );
  }

  @override
  ThemeExtension<LoanProductCardDecorationExtension> lerp(
      covariant ThemeExtension<LoanProductCardDecorationExtension>? other,
      double t) {
    if (other is! LoanProductCardDecorationExtension) return this;

    return LoanProductCardDecorationExtension(
      productCardDecoration: BoxDecoration.lerp(
          productCardDecoration, other.productCardDecoration, t),
      productCardIconBoxDecoration: BoxDecoration.lerp(
          productCardIconBoxDecoration, other.productCardIconBoxDecoration, t),
      cardTitleLarge: TextStyle.lerp(cardTitleLarge, other.cardTitleLarge, t),
      cardTitleMedium:
          TextStyle.lerp(cardTitleMedium, other.cardTitleMedium, t),
      cardTitleSmall: TextStyle.lerp(cardTitleSmall, other.cardTitleSmall, t),
      cardBodyLarge: TextStyle.lerp(cardBodyLarge, other.cardBodyLarge, t),
      cardBodyMedium: TextStyle.lerp(cardBodyMedium, other.cardBodyMedium, t),
      cardBodySmall: TextStyle.lerp(cardBodySmall, other.cardBodySmall, t),
    );
  }

  static LoanProductCardDecorationExtension light =
      LoanProductCardDecorationExtension(
    productCardDecoration: AppDecoration.productCardDecoration,
    productCardIconBoxDecoration: AppDecoration.productCardIconBoxDecoration,
    cardTitleLarge: AppTextStyles.cardTitleLarge,
    cardTitleMedium: AppTextStyles.cardTitleMedium,
    cardTitleSmall: AppTextStyles.cardTitleSmall,
    cardBodyLarge: AppTextStyles.cardBodyLarge,
    cardBodyMedium: AppTextStyles.cardBodyMedium,
    cardBodySmall: AppTextStyles.cardBodySmall,
  );

  static LoanProductCardDecorationExtension dark =
      LoanProductCardDecorationExtension(
    productCardDecoration: AppDecoration.productCardDecoration,
    productCardIconBoxDecoration: AppDecoration.productCardIconBoxDecoration,
    cardTitleLarge: AppTextStyles.cardTitleLarge,
    cardTitleMedium: AppTextStyles.cardTitleMedium,
    cardTitleSmall: AppTextStyles.cardTitleSmall,
    cardBodyLarge: AppTextStyles.cardBodyLarge,
    cardBodyMedium: AppTextStyles.cardBodyMedium,
    cardBodySmall: AppTextStyles.cardBodySmall,
  );
}
