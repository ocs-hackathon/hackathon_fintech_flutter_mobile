import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/theme_extensions/decoration_extension.dart';

class BaseButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  final double? width;
  final Widget? extra;
  const BaseButton(
      {required this.text, this.onTap, this.width, this.extra, super.key});

  @override
  Widget build(BuildContext context) {
    var styles = Theme.of(context).extension<AppDecorationExtension>()!;
    return InkWell(
      onTap: onTap,
      child: Container(
          decoration: styles.mainButtonPrimaryDecoration!,
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          width: width ?? Get.width * 0.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.labelMedium!,
                textAlign: TextAlign.center,
              ),
              extra != null ? extra! : const SizedBox()
            ],
          )),
    );
  }
}
