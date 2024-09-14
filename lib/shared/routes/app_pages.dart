import 'package:get/get.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/auth/login_page.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/auth/signup_page.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/home/home_page.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/kyc_pages/kyc_document_upload_page.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/kyc_pages/kyc_self_info_page.dart';

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
      name: AppRoutes.kycSelfInfoPage,
      page: () => const KycSelfInfoPage(),
    ),
    GetPage(
      name: AppRoutes.kycDocumentUploadPage,
      page: () => const KycDocumentUploadPage(),
    ),

    // home
    GetPage(
      name: AppRoutes.homePage,
      page: () => const HomePage(),
    ),
  ];
}
