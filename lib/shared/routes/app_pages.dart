import 'package:get/get.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/auth/login_page.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/auth/signup_page.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/home/home_page.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/user_info/user_info_page.dart';

import 'app_routes.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    // auth
    GetPage(
      name: AppRoutes.signupPage,
      page: () => const SignupPage(),
    ),
    GetPage(
      name: AppRoutes.loginPage,
      page: () => const LoginPage(),
    ),

    //kyc
    GetPage(
      name: AppRoutes.userInformationPage,
      page: () => const UserInformationPage(),
    ),
    // home
    GetPage(
      name: AppRoutes.homePage,
      page: () => const HomePage(),
    ),
  ];
}
