import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/theme_extensions/decoration_extension.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/controllers/auth_controller.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/data_constants/ui_constants.dart';

class LoanOffersView extends StatefulWidget {
  const LoanOffersView({super.key});

  @override
  State<LoanOffersView> createState() => _LoanOffersViewState();
}

class _LoanOffersViewState extends State<LoanOffersView> {
  String? selectedValue;
  var controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    var styles = Theme.of(context).extension<AppDecorationExtension>()!;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            decoration: styles.lightCardDecoration,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text(
                    "Loan Offers(${controller.loanOffers.length})",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                DropdownButton<String>(
                  hint: Text(
                    'Select an option',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ), // Placeholder text
                  value: selectedValue, // Current selected value
                  items: <String>[
                    'Option 1',
                    'Option 2',
                    'Option 3',
                    'Option 4'
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue; // Update the selected value
                    });
                  },
                  underline:
                      const SizedBox(), // Removes the underline for a flat look
                ),
              ],
            ),
          ),
          kVerticalGap20,
          Obx(() {
            if (controller.loanOffers.isEmpty) {
              return const Center(
                child: Text("No Loan offers"),
              );
            } else {
              return Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    var loan = controller.loanOffers[index];
                    return Container(
                      padding: const EdgeInsets.all(10),
                      decoration: styles.lightCardDecoration,
                      margin: const EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ammount ${loan.amount.roundToDouble()}",
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
                                    "Interest Rate: ${loan.interestRate}",
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                  ),
                                  Text(
                                    "Duration: ${loan.durationToReturn} months",
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                  ),
                                ],
                              ),
                              if (controller.user.value.status == "active")
                                ElevatedButton(
                                    onPressed: () {
                                      controller.takeLoan(loan.id.toString());
                                    },
                                    child: const Text("Accept Loan"))
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              );
            }
          }),
        ],
      ),
    );
  }
}
