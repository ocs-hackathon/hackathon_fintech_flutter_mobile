import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/routes/app_routes.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_button.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_empty_page.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/asset_constants/svg_constants.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/data_constants/ui_constants.dart';

import '../widgets/base_labeled_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseEmptyPage(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            SvgConstants.logoSvg,
            height: 150,
          ),
          kVerticalGap20,
          kVerticalGap20,
          Text(
            "App Name",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          kVerticalGap20,
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
              BaseButton(
                  text: "Login",
                  onTap: () {
                    Get.toNamed(AppRoutes.kycSelfInfoPage);
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
