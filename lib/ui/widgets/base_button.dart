import 'package:hackathon_fintech_flutter_mobile/shared/theme/app_colors.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/theme_extensions/decoration_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseButton extends StatelessWidget {
  final String text;
  final Function()? onTap;

  // isPrimary determines if the color is the main color, i.e. the secondary color or grey
  final bool isPrimary;
  final bool isEnabled;
  const BaseButton(
      {required this.text,
      this.onTap,
      this.isPrimary = true,
      this.isEnabled = true,
      super.key});

  @override
  Widget build(BuildContext context) {
    var styles = Theme.of(context).extension<AppDecorationExtension>()!;
    return InkWell(
      onTap: isEnabled ? onTap : null,
      child: Container(
          decoration: isPrimary
              ? styles.mainButtonPrimaryDecoration!.copyWith(
                  color: isEnabled
                      ? styles.mainButtonPrimaryDecoration!.color
                      : AppColors.secondaryLightGreyColor)
              : styles.mainButtonSecondaryDecoration!.copyWith(
                  color: isEnabled
                      ? styles.mainButtonPrimaryDecoration!.color
                      : AppColors.secondaryLightGreyColor),
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          width: Get.width * 0.7,
          child: Text(
            text,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: !isEnabled ? AppColors.primaryLightGreyColor : null,
                ),
            textAlign: TextAlign.center,
          )),
    );
  }
}
