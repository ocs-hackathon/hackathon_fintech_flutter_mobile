import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/routes/app_pages.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/routes/app_routes.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/theme/custom_theme.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/bindings/init_bindings.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPages.pages,
      initialRoute: AppRoutes.signupPage,
      theme: CustomTheme().lightTheme,
      initialBinding: InitBindings(),
    );
  }
}
