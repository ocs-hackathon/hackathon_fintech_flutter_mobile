import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/theme_extensions/decoration_extension.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/controllers/auth_controller.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/data_constants/ui_constants.dart';
import 'package:intl/intl.dart';

class Transactions extends StatelessWidget {
  Transactions({super.key});

  final controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    var styles = Theme.of(context).extension<AppDecorationExtension>()!;
    var user = controller.user.value;
    var transactions = user.transactionsSent ?? [];
    transactions.addAll(user.transactionsReceived ?? []);
    return Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          Container(
            decoration: styles.lightCardDecoration,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transactions (${(transactions.length)})",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          kVerticalGap20,
          if (transactions.isEmpty)
            const Center(
              child: Text("No Transaction History"),
            ),
          if (transactions.isNotEmpty)
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  var transaction = transactions[index];
                  return Container(
                    padding: const EdgeInsets.all(10),
                    decoration: styles.lightCardDecoration,
                    margin: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ammount ${transaction.amount.roundToDouble()}",
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
                                  "Date: ${DateFormat("dd-MM-YYYY").format(transaction.timestamp)}",
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                                Text(
                                  "Type: ${transaction.transactionType}",
                                  style: Theme.of(context).textTheme.labelSmall,
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
            )
        ]));
  }
}
