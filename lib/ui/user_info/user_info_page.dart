import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/controllers/auth_controller.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_date_picker.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_dropdown.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_page_with_label.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_textfield.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_upload_button.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/data_constants/ui_constants.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/helpers/validators.dart';

class UserInformationPage extends StatefulWidget {
  const UserInformationPage({super.key});

  @override
  State<UserInformationPage> createState() => _UserInformationPageState();
}

class _UserInformationPageState extends State<UserInformationPage> {
  final _formKey = GlobalKey<FormState>();

  var controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return BasePageWithLabel(
      title: "Please Enter The Following Informations",
      children: [
        Form(
          key: _formKey,
          child: Column(
            children: [
              kVerticalGap20,
              Column(
                children: [
                  BaseTextField(
                    label: "First Name",
                    hint: "Enter your First name",
                    validator: Validator.requiredDynamicValidator,
                    onSaved: (value) {
                      controller.currentUserDetail.value =
                          controller.currentUserDetail.value.copyWith(
                        firstName: value,
                      );
                    },
                  ),
                  BaseTextField(
                    label: "Middle Name",
                    hint: "Enter your Middle name",
                    validator: Validator.requiredDynamicValidator,
                    onSaved: (value) {
                      controller.currentUserDetail.value =
                          controller.currentUserDetail.value.copyWith(
                        middleName: value,
                      );
                    },
                  ),
                  BaseTextField(
                    label: "Last Name",
                    hint: "Enter your Last name",
                    validator: Validator.requiredDynamicValidator,
                    onSaved: (value) {
                      controller.currentUserDetail.value =
                          controller.currentUserDetail.value.copyWith(
                        lastName: value,
                      );
                    },
                  ),
                  BaseTextField(
                    label: "Address",
                    hint: "Enter your Address",
                    validator: Validator.requiredDynamicValidator,
                    onSaved: (value) {
                      controller.currentUserDetail.value =
                          controller.currentUserDetail.value.copyWith(
                        address: value,
                      );
                    },
                  ),
                  BaseTextField(
                    label: "Phone Number",
                    hint: "Enter your phone number",
                    validator: Validator.phoneNumberValidator,
                    onSaved: (value) {
                      controller.currentUserDetail.value =
                          controller.currentUserDetail.value.copyWith(
                        phoneNumber: value,
                      );
                    },
                    keyboardType: TextInputType.phone,
                  ),
                  BaseDateTimeFormField(
                    label: "Birth Date",
                    hint: "01/01/1991",
                    validator: Validator.requiredDynamicValidator,
                    lastDate: DateTime.now().subtract(Duration(days: 365 * 18)),
                  ),
                  BaseDropdown(
                    onChanged: (value) {
                      controller.currentUserDetail.value =
                          controller.currentUserDetail.value.copyWith(
                        bankName: value,
                      );
                    },
                    label: "Prefered Bank",
                    hint: "Prefered Bank",
                    validator: Validator.requiredDynamicValidator,
                    items: const {"CBE": "CBE", "ABYSSINIA": "Abyssinia"},
                  ),
                  BaseTextField(
                    label: "Bank Account Number",
                    hint: "Enter Bank Account",
                    validator: Validator.requiredDynamicValidator,
                    onSaved: (value) {
                      controller.currentUserDetail.value =
                          controller.currentUserDetail.value.copyWith(
                        accountNumber: value,
                      );
                    },
                  ),
                  BaseUploadButton(
                    label: "National Id",
                    hint: "Upload your national id",
                    // validator: Validator.requiredDynamicValidator,
                    onFilePicked: (value) {
                      controller.currentUserDetail.value =
                          controller.currentUserDetail.value.copyWith(
                        idFile: value,
                      );
                    },
                  ),
                  BaseUploadButton(
                    label: "Bank Statement",
                    hint: "Upload your Bank Statement",
                    // validator: Validator.requiredDynamicValidator,
                    onFilePicked: (value) {
                      controller.currentUserDetail.value =
                          controller.currentUserDetail.value.copyWith(
                        bankStatement: value,
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
      onNext: () async {
        if (_formKey.currentState!.validate()) {
          FocusScope.of(context).requestFocus(FocusNode());
          await Future.delayed(Duration.zero).then((value) {
            controller.submitUserDetail();
          });
        }
      },
    );
  }
}
