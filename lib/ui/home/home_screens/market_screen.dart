import 'package:flutter/material.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/theme_extensions/decoration_extension.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/home/home_screens/market_tab_views/loan_offers_view.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/home/home_screens/market_tab_views/loan_requests_view.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_empty_page.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var styles = Theme.of(context).extension<AppDecorationExtension>()!;
    return BaseEmptyPage(
        child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                Container(
                  decoration: styles.cardDecoration,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: TabBar(
                    dividerHeight: 0,
                    tabAlignment: TabAlignment.center,
                    tabs: [
                      Tab(
                        child: Text("Offers",
                            style: Theme.of(context).textTheme.labelLarge),
                      ),
                      Tab(
                        child: Text("Requests",
                            style: Theme.of(context).textTheme.labelLarge),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: TabBarView(
                    children: [
                      LoanOffersView(),
                      LoanRequestsView(),
                    ],
                  ),
                ),
              ],
            )));
  }
}
