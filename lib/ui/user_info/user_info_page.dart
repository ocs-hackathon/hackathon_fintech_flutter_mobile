import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_fintech_flutter_mobile/shared/routes/app_routes.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_date_picker.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_dropdown.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_upload_button.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_textfield.dart';
import 'package:hackathon_fintech_flutter_mobile/ui/widgets/base_page_with_label.dart';
import 'package:hackathon_fintech_flutter_mobile/utils/constants/data_constants/ui_constants.dart';

class UserInformationPage extends StatefulWidget {
  const UserInformationPage({super.key});

  @override
  State<UserInformationPage> createState() => _UserInformationPageState();
}

class _UserInformationPageState extends State<UserInformationPage> {
  final _formKey = GlobalKey<FormState>();
  var selectableCities = <Map<String, String>>[];
  var selectableZones = <Map<String, String>>[];

  @override
  void initState() {
    _setupAddress();
    super.initState();
  }

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
                  const BaseTextField(
                    label: "First Name",
                    hint: "Enter your First name",
                  ),
                  const BaseTextField(
                    label: "Middle Name",
                    hint: "Enter your Middle name",
                  ),
                  const BaseTextField(
                    label: "Last Name",
                    hint: "Enter your Last name",
                  ),
                  const BaseTextField(
                    label: "Phone Number",
                    hint: "Enter your phone number",
                    keyboardType: TextInputType.phone,
                  ),
                  const BaseDropdown(
                    label: "Gender",
                    hint: "Select Gender",
                    items: {"MALE": "Male", "FEMALE": "Female"},
                  ),
                  BaseDateTimeFormField(
                    label: "Birth Date",
                    hint: "01/01/1991",
                    lastDate:
                        DateTime.now().subtract(const Duration(days: 365 * 18)),
                  ),
                  const BaseDropdown(
                    label: "Prefered Bank",
                    hint: "Prefered Bank",
                    items: {"CBE": "CBE", "ABYSSINIA": "Abyssinia"},
                  ),
                  const BaseTextField(
                    label: "Bank Account Number",
                    hint: "Enter Bank Account",
                  ),
                  const BaseUploadButton(
                    label: "National Id",
                    hint: "Upload your national id",
                  ),
                  const BaseUploadButton(
                    label: "Bank Statement",
                    hint: "Upload your Bank Statement",
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
      onNext: () async {
        // if (_formKey.currentState!.validate()) {
        FocusScope.of(context).requestFocus(FocusNode());
        await Future.delayed(Duration.zero).then((value) {
          Get.toNamed(AppRoutes.kycDocumentUploadPage);
        });
        // }
      },
    );
  }

  _setupAddress() {}
}
