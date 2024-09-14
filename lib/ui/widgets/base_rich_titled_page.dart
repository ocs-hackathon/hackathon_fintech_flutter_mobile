import 'package:hackathon_fintech_flutter_mobile/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_back_button.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_button.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_empty_page.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/data_constants/ui_constants.dart';

class BaseTitledPage extends StatelessWidget {
  final String? title;
  final String? coloredText;
  final String? description;
  final List<Widget> children;
  final Function()? onBack;
  final Function()? onNext;
  final bool isNextEnabled;
  final Widget? bottomSection;
  final bool hasBackButton;
  final Widget? loader;
  final bool withPadding;
  final CrossAxisAlignment? crossAxisAlignment;
  const BaseTitledPage({
    required this.children,
    this.title,
    this.description,
    this.coloredText,
    this.onBack,
    this.onNext,
    this.isNextEnabled = true,
    this.bottomSection,
    this.hasBackButton = false,
    this.loader,
    this.withPadding = true,
    this.crossAxisAlignment,
    super.key,
  }) : assert(bottomSection != null || onNext != null);

  @override
  Widget build(BuildContext context) {
    return BaseEmptyPage(
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              withPadding ? EdgeInsets.zero : kScreenPadding,
                          child: Row(
                            children: [
                              if (hasBackButton)
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BaseBackButton(),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.65,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                          text: title,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge!,
                                          children: [
                                            if (coloredText != null)
                                              TextSpan(
                                                  text: coloredText,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelLarge!
                                                      .copyWith(
                                                          color: AppColors
                                                              .primaryColor,
                                                          fontWeight:
                                                              FontWeight.w900)),
                                          ]),
                                    ),
                                    if (description != null)
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
                                        child: Text(description!,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineSmall!),
                                      )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment:
                              crossAxisAlignment ?? CrossAxisAlignment.center,
                          children: children,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: withPadding
                      ? EdgeInsets.zero
                      : kScreenPadding.copyWith(top: 10, bottom: 10),
                  child: bottomSection ??
                      BaseButton(
                        text: "Next",
                        isEnabled: isNextEnabled,
                        onTap: () => onNext!(),
                      ),
                ),
              ],
            ),
          ),
          if (loader != null) loader!
        ],
      ),
    );
  }
}
