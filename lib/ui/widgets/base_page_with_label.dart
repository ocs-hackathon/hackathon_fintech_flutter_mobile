import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_button.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_empty_page.dart';

class BasePageWithLabel extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final List<Widget> children;
  final Function()? onBack;
  final Function()? onNext;
  final Widget? loader;
  const BasePageWithLabel({
    required this.children,
    this.title,
    this.subTitle,
    this.onBack,
    this.onNext,
    this.loader,
    super.key,
  });

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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                              onPressed: () => Get.back(),
                              icon: const Icon(Icons.chevron_left)),
                        ),
                        Text(
                          title!,
                          style: Theme.of(context).textTheme.labelLarge!,
                          overflow: TextOverflow.clip,
                        ),
                        if (subTitle != null)
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text(subTitle!,
                                style:
                                    Theme.of(context).textTheme.headlineSmall!),
                          ),
                        ...children
                      ],
                    ),
                  ),
                ),
                BaseButton(
                  text: "Next",
                  onTap: () => onNext!(),
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
