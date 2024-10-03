import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/theme_extensions/decoration_extension.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/controllers/auth_controller.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/data_constants/ui_constants.dart';

class LoanHistory extends StatelessWidget {
  LoanHistory({super.key});
  final controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    var styles = Theme.of(context).extension<AppDecorationExtension>()!;
    return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(children: [
          Container(
            decoration: styles.lightCardDecoration,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text(
                    "Loan History (${controller.borrowings.length})",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
          kVerticalGap20,
          Obx(() {
            if (controller.borrowings.isEmpty) {
              return const Center(child: Text("No Loan history"));
            } else {
              return Expanded(
                child: ListView.builder(
                  itemCount: controller.borrowings.length,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    var loan = controller.borrowings[index];
                    return Container(
                      padding: const EdgeInsets.all(10),
                      decoration: styles.lightCardDecoration,
                      margin: const EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ammount ${loan.offer?.amount.roundToDouble()}",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Interest Rate: ${loan.offer?.interestRate}",
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                  ),
                                  Text(
                                    "Duration: ${loan.offer?.durationToReturn} months",
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                  ),
                                  Text(
                                    "Status: ${loan.offer?.status} ",
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              );
            }
          })
        ]));
  }
}
