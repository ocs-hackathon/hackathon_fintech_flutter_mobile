import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/theme_extensions/decoration_extension.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/controllers/auth_controller.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/home/home_screens/market_tab_views/loan_offers_view.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_empty_page.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/custom_loading_cover.dart';

class MarketScreen extends StatelessWidget {
  MarketScreen({super.key});
  final controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    var styles = Theme.of(context).extension<AppDecorationExtension>()!;

    return BaseEmptyPage(
        loader: Obx(
          () => CustomLoadingCover(
            inAsyncCall: controller.status.isLoading,
          ),
        ),
        child: Column(
          children: [
            Text("Offers", style: Theme.of(context).textTheme.titleMedium),
            if (controller.user.value.status == "pending")
              Container(
                decoration: styles.cardDecoration!.copyWith(
                  color: Colors.greenAccent,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: Text(
                    "You can accept loans once your account is verified",
                    style: Theme.of(context).textTheme.bodyMedium),
              ),
            const Expanded(
              child: LoanOffersView(),
            ),
          ],
        ));
  }
}
