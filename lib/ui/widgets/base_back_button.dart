import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseBackButton extends StatelessWidget {
  final Function? onBackButtonTap;
  const BaseBackButton({super.key, this.onBackButtonTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onBackButtonTap != null) {
          onBackButtonTap!();
        } else {
          Get.back();
        }
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        child: const Icon(
          Icons.chevron_left,
        ),
      ),
    );
  }
}
