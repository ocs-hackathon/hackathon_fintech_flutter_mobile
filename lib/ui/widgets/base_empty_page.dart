import 'package:flutter/material.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/theme_extensions/decoration_extension.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/data_constants/ui_constants.dart';

class BaseEmptyPage extends StatelessWidget {
  final Widget child;
  final bool withPadding;
  const BaseEmptyPage(
      {required this.child, this.withPadding = true, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        padding: withPadding ? kScreenPadding : null,
        width: double.infinity,
        height: double.infinity,
        decoration: Theme.of(context)
            .extension<AppDecorationExtension>()!
            .mainBackgroundDecoration,
        child: child,
      ),
    );
  }
}
