import 'package:hackathon_fintech_flutter_mobile/shared/theme/theme_extensions/form_field_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseWidget extends StatelessWidget {
  final String label;
  final Widget child;
  final String? errorText;
  final Widget? extra;
  const BaseWidget({
    required this.label,
    required this.child,
    this.errorText,
    this.extra,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var styles = Theme.of(context).extension<FormFieldStylesExtenstion>()!;

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(label, style: styles.labelStyle),
          const SizedBox(
            height: 8,
          ),
          Container(
            decoration: styles.mainBorderedTextFieldDecoration!,
            width: Get.width,
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: child,
          ),
          if (errorText != null)
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 0),
              child: Text(errorText!, style: styles.errorStyle),
            ),
          if (extra != null) extra!,
        ],
      ),
    );
  }
}
