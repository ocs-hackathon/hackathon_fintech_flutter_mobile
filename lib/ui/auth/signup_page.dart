import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_fintech_flutter_mobile/core/models/freezed_models.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/routes/app_routes.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/controllers/auth_controller.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_button.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_empty_page.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_textfield.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/custom_loading_cover.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/asset_constants/image_constants.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/data_constants/ui_constants.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/helpers/validators.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final controller = Get.find<AuthController>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BaseEmptyPage(
      loader: Obx(
        () => CustomLoadingCover(
          inAsyncCall: controller.status.isLoading,
        ),
      ),
      child: Form(
        key: _formKey,
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
                  validator: Validator.emailValidator,
                ),
                BaseTextField(
                  label: "Password",
                  hint: "Enter your password",
                  controller: passwordController,
                  validator: Validator.createPasswordValidator,
                ),
                BaseTextField(
                  label: "Confirm Password",
                  hint: "Confirm your password",
                  validator: (value) => Validator.confirmPasswordValidator(
                      value, passwordController.text),
                ),
                kVerticalGap60,
                BaseButton(
                    text: "Sign Up",
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        controller.signup(UserSignInModel(
                            email: emailController.text,
                            password: passwordController.text));
                      }
                    }),
                kVerticalGap20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(AppRoutes.loginPage);
                      },
                      child: Text(
                        "Login",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
