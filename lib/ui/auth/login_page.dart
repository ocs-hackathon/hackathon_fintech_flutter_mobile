import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/routes/app_routes.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_button.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_empty_page.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/asset_constants/image_constants.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/data_constants/ui_constants.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/helpers/functions.dart';

import '../widgets/base_labeled_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseEmptyPage(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            ImageConstants.logo,
            height: 150,
          ),
          kVerticalGap60,
          Column(
            children: [
              const BaseLabeledTextField(
                label: "Email Address",
                hint: "Enter your email address",
                keyboardType: TextInputType.emailAddress,
              ),
              const BaseLabeledTextField(
                label: "Password",
                hint: "Enter your password",
              ),
              kVerticalGap60,
              BaseButton(
                  text: "Login",
                  onTap: () {
                    Get.toNamed(AppRoutes.kycSelfInfoPage);
                    toast("Success", "Login Successful");
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
