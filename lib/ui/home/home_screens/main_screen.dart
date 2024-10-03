import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/routes/app_routes.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/theme_extensions/decoration_extension.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/components/loan_history.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/controllers/auth_controller.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_empty_page.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/custom_loading_cover.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/asset_constants/image_constants.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/data_constants/ui_constants.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              ImageConstants.logo,
              height: 100,
            ),
          ),
          Text(
            controller.user.value.email ?? "",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
                onPressed: () {
                  controller.logout();
                },
                child: Text("Logout",
                    style: Theme.of(context).textTheme.bodyMedium)),
          ),
          if (controller.user.value.status == "pending")
            Container(
              decoration: styles.cardDecoration!.copyWith(
                color: Colors.greenAccent,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: Text("Your Documnets are being verified, please wait",
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
          Text("Current Loan", style: Theme.of(context).textTheme.bodyLarge),
          Container(
              decoration: styles.lightCardDecoration,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: Obx(
                () => controller.user.value.activeLoan
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ammount ${controller.user.value.borrowings!.lastOrNull!.offer?.amount.roundToDouble()}",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          Text(
                            "Interest Rate: ${controller.user.value.borrowings!.lastOrNull!.offer?.interestRate}",
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                          Text(
                            "Duration: ${controller.user.value.borrowings!.lastOrNull!.offer?.durationToReturn} months",
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                          Text(
                            "Status: ${controller.user.value.borrowings!.lastOrNull!.offer?.status} ",
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: ElevatedButton(
                              onPressed: () {
                                controller.payBackLoan();
                              },
                              child: const Text(
                                "Pay Back Loan",
                              ),
                            ),
                          ),
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("No Active Loan",
                              style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
              )),
          Expanded(child: LoanHistory()),
          kVerticalGap60
          // Transactions()
        ],
      ),
    );
  }
}
