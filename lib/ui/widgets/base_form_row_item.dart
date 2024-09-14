import 'package:flutter/material.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/data_constants/ui_constants.dart';

class BaseFormRow extends StatelessWidget {
  final Widget left;
  final Widget right;
  const BaseFormRow({required this.left, required this.right, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: left,
          ),
          kHorizontalGap,
          Expanded(
            child: right,
          )
        ]);
  }
}
