import 'package:flutter/material.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/app_colors.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/home/home_screens/main_screen.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/home/home_screens/market_screen.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_empty_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
    return BaseEmptyPage(
        withPadding: false,
        child: PersistentTabView(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          bottomScreenMargin: 0,
          context,
          controller: _controller,
          screens: [
            MainScreen(),
            MarketScreen(),
            // const ProfileScreen(),
          ],
          items: _navBarsItems(),
          navBarHeight: kBottomNavigationBarHeight,
          decoration: const NavBarDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100))),
        ));
  }

  _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: "Home",
        activeColorPrimary: AppColors.primaryBlackColor,
        inactiveColorPrimary: Colors.grey,
        textStyle: Theme.of(context).textTheme.bodyMedium,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.graphic_eq),
        title: "Market",
        activeColorPrimary: AppColors.primaryBlackColor,
        textStyle: Theme.of(context).textTheme.bodyMedium,
        inactiveColorPrimary: Colors.grey,
      ),
      // PersistentBottomNavBarItem(
      //   icon: const Icon(Icons.person),
      //   title: "Profile",
      //   activeColorPrimary: AppColors.primaryBlackColor,
      //   textStyle: Theme.of(context).textTheme.bodyMedium,
      //   inactiveColorPrimary: Colors.grey,
      // ),
    ];
  }
}
