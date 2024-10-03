import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_fintech_flutter_mobile/core/models/freezed_models.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/controllers/auth_controller.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_button.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_empty_page.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_textfield.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/asset_constants/image_constants.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/data_constants/ui_constants.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final controller = Get.find<AuthController>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
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
              BaseTextField(
                label: "Email Address",
                hint: "Enter your email address",
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
              ),
              BaseTextField(
                label: "Password",
                hint: "Enter your password",
                controller: passwordController,
              ),
              const BaseTextField(
                label: "Confirm Password",
                hint: "Confirm your password",
              ),
              kVerticalGap60,
              BaseButton(
                  text: "Sign Up",
                  onTap: () {
                    controller.signup(UserSignInModel(
                        email: emailController.text,
                        password: passwordController.text));
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
