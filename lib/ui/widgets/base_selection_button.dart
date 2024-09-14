import 'package:hackathon_fintech_flutter_mobile/shared/theme/app_colors.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/theme_extensions/decoration_extension.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/data_constants/ui_constants.dart';
import 'package:flutter/material.dart';

class BaseSelectionButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final Function()? onTap;
  const BaseSelectionButton(
      {required this.label, this.isSelected = false, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    var styles = Theme.of(context).extension<AppDecorationExtension>()!;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: isSelected
            ? styles.mainButtonPrimaryDecoration!.copyWith(
                color: null,
                gradient: AppColors.primaryGradient,
              )
            : styles.mainBorderedDecoration!,
        padding: const EdgeInsets.all(
          10,
        ),
        child: Row(
          children: [
            isSelected
                ? const Icon(
                    Icons.check_circle,
                    color: Colors.white,
                  )
                : const Icon(
                    Icons.circle_outlined,
                  ),
            kHorizontalGap,
            Text(
              label,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: isSelected
                        ? AppColors.primaryWhiteColor
                        : AppColors.primaryLightGreyColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
