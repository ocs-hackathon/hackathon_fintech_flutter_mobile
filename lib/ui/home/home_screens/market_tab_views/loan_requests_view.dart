import 'package:flutter/material.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/theme_extensions/decoration_extension.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/data_constants/ui_constants.dart';
import 'package:intl/intl.dart';

class LoanRequestsView extends StatefulWidget {
  const LoanRequestsView({super.key});

  @override
  State<LoanRequestsView> createState() => _LoanRequestsViewState();
}

class _LoanRequestsViewState extends State<LoanRequestsView> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    var styles = Theme.of(context).extension<AppDecorationExtension>()!;
    return Container(
      decoration: styles.cardDecoration,
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
                Text(
                  "Loan Requests(10)",
                  style: Theme.of(context).textTheme.bodyLarge,
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
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(10),
                  decoration: styles.lightCardDecoration,
                  margin: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Loan request $index",
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
                                "Monthly repayment: \$20",
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                              Text(
                                "End Date: ${DateFormat("dd/MM/yy").format(DateTime.now())}",
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            ],
                          ),
                          Text(
                            "\$ 1000",
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
